
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t expected; } ;
typedef TYPE_1__ ZSTDv07_DCtx ;



size_t ZSTDv07_nextSrcSizeToDecompress(ZSTDv07_DCtx* dctx)
{
    return dctx->expected;
}
