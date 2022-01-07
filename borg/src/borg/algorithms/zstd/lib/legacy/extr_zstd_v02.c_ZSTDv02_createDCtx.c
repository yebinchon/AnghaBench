
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTDv02_Dctx ;


 scalar_t__ ZSTD_createDCtx () ;

ZSTDv02_Dctx* ZSTDv02_createDCtx(void)
{
    return (ZSTDv02_Dctx*)ZSTD_createDCtx();
}
