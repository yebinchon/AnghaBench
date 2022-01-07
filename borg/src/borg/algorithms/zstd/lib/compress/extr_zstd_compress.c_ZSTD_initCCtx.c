
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ZSTD_customMem ;
struct TYPE_5__ {int bmi2; int customMem; } ;
typedef TYPE_1__ ZSTD_CCtx ;


 size_t ZSTD_CCtx_reset (TYPE_1__*,int ) ;
 int ZSTD_cpuid () ;
 int ZSTD_cpuid_bmi2 (int ) ;
 int ZSTD_isError (size_t const) ;
 int ZSTD_reset_parameters ;
 int assert (int) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void ZSTD_initCCtx(ZSTD_CCtx* cctx, ZSTD_customMem memManager)
{
    assert(cctx != ((void*)0));
    memset(cctx, 0, sizeof(*cctx));
    cctx->customMem = memManager;
    cctx->bmi2 = ZSTD_cpuid_bmi2(ZSTD_cpuid());
    { size_t const err = ZSTD_CCtx_reset(cctx, ZSTD_reset_parameters);
        assert(!ZSTD_isError(err));
        (void)err;
    }
}
