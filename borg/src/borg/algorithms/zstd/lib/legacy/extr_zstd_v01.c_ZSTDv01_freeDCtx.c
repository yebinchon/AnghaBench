
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTDv01_Dctx ;


 int free (int *) ;

size_t ZSTDv01_freeDCtx(ZSTDv01_Dctx* dctx)
{
    free(dctx);
    return 0;
}
