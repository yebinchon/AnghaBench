
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTDv05_DCtx ;


 int free (int *) ;

size_t ZSTDv05_freeDCtx(ZSTDv05_DCtx* dctx)
{
    free(dctx);
    return 0;
}
