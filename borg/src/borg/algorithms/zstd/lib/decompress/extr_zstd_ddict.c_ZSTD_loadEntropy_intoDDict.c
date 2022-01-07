
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ZSTD_dictContentType_e ;
struct TYPE_3__ {int entropyPresent; int dictSize; char const* dictContent; int entropy; void* dictID; } ;
typedef TYPE_1__ ZSTD_DDict ;
typedef scalar_t__ U32 ;


 int CHECK_E (int ,int ) ;
 size_t ERROR (int ) ;
 void* MEM_readLE32 (char const*) ;
 int ZSTD_FRAMEIDSIZE ;
 scalar_t__ const ZSTD_MAGIC_DICTIONARY ;
 scalar_t__ ZSTD_dct_fullDict ;
 scalar_t__ ZSTD_dct_rawContent ;
 int ZSTD_loadDEntropy (int *,char const*,int) ;
 int dictionary_corrupted ;

__attribute__((used)) static size_t
ZSTD_loadEntropy_intoDDict(ZSTD_DDict* ddict,
                           ZSTD_dictContentType_e dictContentType)
{
    ddict->dictID = 0;
    ddict->entropyPresent = 0;
    if (dictContentType == ZSTD_dct_rawContent) return 0;

    if (ddict->dictSize < 8) {
        if (dictContentType == ZSTD_dct_fullDict)
            return ERROR(dictionary_corrupted);
        return 0;
    }
    { U32 const magic = MEM_readLE32(ddict->dictContent);
        if (magic != ZSTD_MAGIC_DICTIONARY) {
            if (dictContentType == ZSTD_dct_fullDict)
                return ERROR(dictionary_corrupted);
            return 0;
        }
    }
    ddict->dictID = MEM_readLE32((const char*)ddict->dictContent + ZSTD_FRAMEIDSIZE);


    CHECK_E( ZSTD_loadDEntropy(&ddict->entropy,
                                ddict->dictContent, ddict->dictSize),
             dictionary_corrupted );
    ddict->entropyPresent = 1;
    return 0;
}
