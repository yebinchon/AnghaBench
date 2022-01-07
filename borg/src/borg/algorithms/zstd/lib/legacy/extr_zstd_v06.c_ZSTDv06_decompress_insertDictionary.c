
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTDv06_DCtx ;
typedef scalar_t__ U32 ;


 size_t ERROR (int ) ;
 scalar_t__ MEM_readLE32 (void const*) ;
 scalar_t__ const ZSTDv06_DICT_MAGIC ;
 scalar_t__ ZSTDv06_isError (size_t) ;
 size_t ZSTDv06_loadEntropy (int *,void const*,size_t) ;
 int ZSTDv06_refDictContent (int *,void const*,size_t) ;
 int dictionary_corrupted ;

__attribute__((used)) static size_t ZSTDv06_decompress_insertDictionary(ZSTDv06_DCtx* dctx, const void* dict, size_t dictSize)
{
    size_t eSize;
    U32 const magic = MEM_readLE32(dict);
    if (magic != ZSTDv06_DICT_MAGIC) {

        ZSTDv06_refDictContent(dctx, dict, dictSize);
        return 0;
    }

    dict = (const char*)dict + 4;
    dictSize -= 4;
    eSize = ZSTDv06_loadEntropy(dctx, dict, dictSize);
    if (ZSTDv06_isError(eSize)) return ERROR(dictionary_corrupted);


    dict = (const char*)dict + eSize;
    dictSize -= eSize;
    ZSTDv06_refDictContent(dctx, dict, dictSize);

    return 0;
}
