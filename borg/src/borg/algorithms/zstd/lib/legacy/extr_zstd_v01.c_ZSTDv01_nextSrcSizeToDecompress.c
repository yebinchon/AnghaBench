
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t expected; } ;
typedef TYPE_1__ dctx_t ;
typedef int ZSTDv01_Dctx ;



size_t ZSTDv01_nextSrcSizeToDecompress(ZSTDv01_Dctx* dctx)
{
    return ((dctx_t*)dctx)->expected;
}
