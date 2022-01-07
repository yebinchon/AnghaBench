
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int scratchBuffer ;
typedef int U32 ;
typedef int S16 ;
typedef int FSE_CTable ;
typedef int BYTE ;


 int CHECK_F (int ) ;
 int CHECK_V_F (scalar_t__,int ) ;
 int FSE_CTABLE_SIZE_U32 (int,int) ;
 int FSE_buildCTable_wksp (int *,int *,unsigned int,int,int *,int) ;
 int FSE_compress_usingCTable (int *,int,void const*,size_t,int *) ;
 int FSE_normalizeCount (int *,int,unsigned int*,size_t,unsigned int) ;
 int FSE_optimalTableLog (int,size_t,unsigned int) ;
 int FSE_writeNCount (int *,int,int *,unsigned int,int) ;
 unsigned int HIST_count_simple (unsigned int*,unsigned int*,void const*,size_t) ;
 int HUF_TABLELOG_MAX ;
 int MAX_FSE_TABLELOG_FOR_HUFF_HEADER ;
 scalar_t__ cSize ;
 scalar_t__ hSize ;

__attribute__((used)) static size_t HUF_compressWeights (void* dst, size_t dstSize, const void* weightTable, size_t wtSize)
{
    BYTE* const ostart = (BYTE*) dst;
    BYTE* op = ostart;
    BYTE* const oend = ostart + dstSize;

    unsigned maxSymbolValue = HUF_TABLELOG_MAX;
    U32 tableLog = MAX_FSE_TABLELOG_FOR_HUFF_HEADER;

    FSE_CTable CTable[FSE_CTABLE_SIZE_U32(MAX_FSE_TABLELOG_FOR_HUFF_HEADER, HUF_TABLELOG_MAX)];
    BYTE scratchBuffer[1<<MAX_FSE_TABLELOG_FOR_HUFF_HEADER];

    unsigned count[HUF_TABLELOG_MAX+1];
    S16 norm[HUF_TABLELOG_MAX+1];


    if (wtSize <= 1) return 0;


    { unsigned const maxCount = HIST_count_simple(count, &maxSymbolValue, weightTable, wtSize);
        if (maxCount == wtSize) return 1;
        if (maxCount == 1) return 0;
    }

    tableLog = FSE_optimalTableLog(tableLog, wtSize, maxSymbolValue);
    CHECK_F( FSE_normalizeCount(norm, tableLog, count, wtSize, maxSymbolValue) );


    { CHECK_V_F(hSize, FSE_writeNCount(op, oend-op, norm, maxSymbolValue, tableLog) );
        op += hSize;
    }


    CHECK_F( FSE_buildCTable_wksp(CTable, norm, maxSymbolValue, tableLog, scratchBuffer, sizeof(scratchBuffer)) );
    { CHECK_V_F(cSize, FSE_compress_usingCTable(op, oend - op, weightTable, wtSize, CTable) );
        if (cSize == 0) return 0;
        op += cSize;
    }

    return op-ostart;
}
