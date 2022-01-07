
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTDv05_DCtx ;


 size_t ERROR (int ) ;
 size_t ZSTDv05_decompressBegin (int *) ;
 size_t ZSTDv05_decompress_insertDictionary (int *,void const*,size_t) ;
 scalar_t__ ZSTDv05_isError (size_t) ;
 int dictionary_corrupted ;

size_t ZSTDv05_decompressBegin_usingDict(ZSTDv05_DCtx* dctx, const void* dict, size_t dictSize)
{
    size_t errorCode;
    errorCode = ZSTDv05_decompressBegin(dctx);
    if (ZSTDv05_isError(errorCode)) return errorCode;

    if (dict && dictSize) {
        errorCode = ZSTDv05_decompress_insertDictionary(dctx, dict, dictSize);
        if (ZSTDv05_isError(errorCode)) return ERROR(dictionary_corrupted);
    }

    return 0;
}
