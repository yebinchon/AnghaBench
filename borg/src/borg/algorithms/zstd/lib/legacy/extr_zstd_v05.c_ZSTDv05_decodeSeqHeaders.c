
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;
typedef int S16 ;
typedef int FSEv05_DTable ;
typedef int BYTE ;


 size_t ERROR (int ) ;




 int FSEv05_buildDTable (int *,int *,unsigned int,unsigned int) ;
 int FSEv05_buildDTable_raw (int *,unsigned int) ;
 int FSEv05_buildDTable_rle (int *,unsigned int) ;
 int FSEv05_isError (size_t) ;
 size_t FSEv05_readNCount (int *,unsigned int*,unsigned int*,int const*,int) ;
 int GENERIC ;
 unsigned int LLFSEv05Log ;
 unsigned int LLbits ;
 size_t MIN_SEQUENCES_SIZE ;
 unsigned int MLFSEv05Log ;
 unsigned int MLbits ;
 unsigned int MaxLL ;
 unsigned int MaxML ;
 unsigned int MaxOff ;
 unsigned int OffFSEv05Log ;
 unsigned int Offbits ;
 int corruption_detected ;
 int srcSize_wrong ;

__attribute__((used)) static size_t ZSTDv05_decodeSeqHeaders(int* nbSeq, const BYTE** dumpsPtr, size_t* dumpsLengthPtr,
                         FSEv05_DTable* DTableLL, FSEv05_DTable* DTableML, FSEv05_DTable* DTableOffb,
                         const void* src, size_t srcSize, U32 flagStaticTable)
{
    const BYTE* const istart = (const BYTE* const)src;
    const BYTE* ip = istart;
    const BYTE* const iend = istart + srcSize;
    U32 LLtype, Offtype, MLtype;
    unsigned LLlog, Offlog, MLlog;
    size_t dumpsLength;


    if (srcSize < MIN_SEQUENCES_SIZE)
        return ERROR(srcSize_wrong);


    *nbSeq = *ip++;
    if (*nbSeq==0) return 1;
    if (*nbSeq >= 128) {
        if (ip >= iend) return ERROR(srcSize_wrong);
        *nbSeq = ((nbSeq[0]-128)<<8) + *ip++;
    }

    if (ip >= iend) return ERROR(srcSize_wrong);
    LLtype = *ip >> 6;
    Offtype = (*ip >> 4) & 3;
    MLtype = (*ip >> 2) & 3;
    if (*ip & 2) {
        if (ip+3 > iend) return ERROR(srcSize_wrong);
        dumpsLength = ip[2];
        dumpsLength += ip[1] << 8;
        ip += 3;
    } else {
        if (ip+2 > iend) return ERROR(srcSize_wrong);
        dumpsLength = ip[1];
        dumpsLength += (ip[0] & 1) << 8;
        ip += 2;
    }
    *dumpsPtr = ip;
    ip += dumpsLength;
    *dumpsLengthPtr = dumpsLength;


    if (ip > iend-3) return ERROR(srcSize_wrong);


    {
        S16 norm[MaxML+1];
        size_t headerSize;


        switch(LLtype)
        {
        case 129 :
            LLlog = 0;
            FSEv05_buildDTable_rle(DTableLL, *ip++);
            break;
        case 130 :
            LLlog = LLbits;
            FSEv05_buildDTable_raw(DTableLL, LLbits);
            break;
        case 128:
            if (!flagStaticTable) return ERROR(corruption_detected);
            break;
        case 131 :
        default :
            { unsigned max = MaxLL;
                headerSize = FSEv05_readNCount(norm, &max, &LLlog, ip, iend-ip);
                if (FSEv05_isError(headerSize)) return ERROR(GENERIC);
                if (LLlog > LLFSEv05Log) return ERROR(corruption_detected);
                ip += headerSize;
                FSEv05_buildDTable(DTableLL, norm, max, LLlog);
        } }

        switch(Offtype)
        {
        case 129 :
            Offlog = 0;
            if (ip > iend-2) return ERROR(srcSize_wrong);
            FSEv05_buildDTable_rle(DTableOffb, *ip++ & MaxOff);
            break;
        case 130 :
            Offlog = Offbits;
            FSEv05_buildDTable_raw(DTableOffb, Offbits);
            break;
        case 128:
            if (!flagStaticTable) return ERROR(corruption_detected);
            break;
        case 131 :
        default :
            { unsigned max = MaxOff;
                headerSize = FSEv05_readNCount(norm, &max, &Offlog, ip, iend-ip);
                if (FSEv05_isError(headerSize)) return ERROR(GENERIC);
                if (Offlog > OffFSEv05Log) return ERROR(corruption_detected);
                ip += headerSize;
                FSEv05_buildDTable(DTableOffb, norm, max, Offlog);
        } }

        switch(MLtype)
        {
        case 129 :
            MLlog = 0;
            if (ip > iend-2) return ERROR(srcSize_wrong);
            FSEv05_buildDTable_rle(DTableML, *ip++);
            break;
        case 130 :
            MLlog = MLbits;
            FSEv05_buildDTable_raw(DTableML, MLbits);
            break;
        case 128:
            if (!flagStaticTable) return ERROR(corruption_detected);
            break;
        case 131 :
        default :
            { unsigned max = MaxML;
                headerSize = FSEv05_readNCount(norm, &max, &MLlog, ip, iend-ip);
                if (FSEv05_isError(headerSize)) return ERROR(GENERIC);
                if (MLlog > MLFSEv05Log) return ERROR(corruption_detected);
                ip += headerSize;
                FSEv05_buildDTable(DTableML, norm, max, MLlog);
    } } }

    return ip-istart;
}
