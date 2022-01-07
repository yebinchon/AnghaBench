
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ZSTD_DDict ;
struct TYPE_5__ {int ddictIsCold; void const* const dictEnd; } ;
typedef TYPE_1__ ZSTD_DCtx ;


 int CHECK_F (int ) ;
 int DEBUGLOG (int,char*,...) ;
 scalar_t__ ZSTD_DDict_dictContent (int const*) ;
 size_t ZSTD_DDict_dictSize (int const*) ;
 int ZSTD_copyDDictParameters (TYPE_1__*,int const*) ;
 int ZSTD_decompressBegin (TYPE_1__*) ;
 int assert (int ) ;

size_t ZSTD_decompressBegin_usingDDict(ZSTD_DCtx* dctx, const ZSTD_DDict* ddict)
{
    DEBUGLOG(4, "ZSTD_decompressBegin_usingDDict");
    assert(dctx != ((void*)0));
    if (ddict) {
        const char* const dictStart = (const char*)ZSTD_DDict_dictContent(ddict);
        size_t const dictSize = ZSTD_DDict_dictSize(ddict);
        const void* const dictEnd = dictStart + dictSize;
        dctx->ddictIsCold = (dctx->dictEnd != dictEnd);
        DEBUGLOG(4, "DDict is %s",
                    dctx->ddictIsCold ? "~cold~" : "hot!");
    }
    CHECK_F( ZSTD_decompressBegin(dctx) );
    if (ddict) {
        ZSTD_copyDDictParameters(dctx, ddict);
    }
    return 0;
}
