
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int compressionLevel; unsigned int notificationLevel; unsigned int const dictID; } ;
typedef TYPE_1__ ZDICT_params_t ;
typedef unsigned int U64 ;
typedef unsigned int U32 ;
typedef int BYTE ;


 int DEBUGLOG (int,char*) ;
 int DISPLAYLEVEL (int,char*,...) ;
 size_t ERROR (int ) ;
 int HBUFFSIZE ;
 int MEM_writeLE32 (int *,unsigned int const) ;
 unsigned int XXH64 (void const*,size_t,int ) ;
 size_t ZDICT_CONTENTSIZE_MIN ;
 size_t ZDICT_DICTSIZE_MIN ;
 size_t ZDICT_analyzeEntropy (int *,int,int const,void const*,size_t const*,unsigned int,void const*,size_t,unsigned int const) ;
 scalar_t__ ZDICT_isError (size_t const) ;
 unsigned int const ZSTD_MAGIC_DICTIONARY ;
 int dstSize_tooSmall ;
 int g_compressionLevel_default ;
 int memcpy (void*,int *,size_t) ;
 int memmove (char*,void const*,size_t) ;
 int srcSize_wrong ;

size_t ZDICT_finalizeDictionary(void* dictBuffer, size_t dictBufferCapacity,
                          const void* customDictContent, size_t dictContentSize,
                          const void* samplesBuffer, const size_t* samplesSizes,
                          unsigned nbSamples, ZDICT_params_t params)
{
    size_t hSize;

    BYTE header[256];
    int const compressionLevel = (params.compressionLevel == 0) ? g_compressionLevel_default : params.compressionLevel;
    U32 const notificationLevel = params.notificationLevel;


    DEBUGLOG(4, "ZDICT_finalizeDictionary");
    if (dictBufferCapacity < dictContentSize) return ERROR(dstSize_tooSmall);
    if (dictContentSize < ZDICT_CONTENTSIZE_MIN) return ERROR(srcSize_wrong);
    if (dictBufferCapacity < ZDICT_DICTSIZE_MIN) return ERROR(dstSize_tooSmall);


    MEM_writeLE32(header, ZSTD_MAGIC_DICTIONARY);
    { U64 const randomID = XXH64(customDictContent, dictContentSize, 0);
        U32 const compliantID = (randomID % ((1U<<31)-32768)) + 32768;
        U32 const dictID = params.dictID ? params.dictID : compliantID;
        MEM_writeLE32(header+4, dictID);
    }
    hSize = 8;


    DISPLAYLEVEL(2, "\r%70s\r", "");
    DISPLAYLEVEL(2, "statistics ... \n");
    { size_t const eSize = ZDICT_analyzeEntropy(header+hSize, 256 -hSize,
                                  compressionLevel,
                                  samplesBuffer, samplesSizes, nbSamples,
                                  customDictContent, dictContentSize,
                                  notificationLevel);
        if (ZDICT_isError(eSize)) return eSize;
        hSize += eSize;
    }


    if (hSize + dictContentSize > dictBufferCapacity) dictContentSize = dictBufferCapacity - hSize;
    { size_t const dictSize = hSize + dictContentSize;
        char* dictEnd = (char*)dictBuffer + dictSize;
        memmove(dictEnd - dictContentSize, customDictContent, dictContentSize);
        memcpy(dictBuffer, header, hSize);
        return dictSize;
    }
}
