
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ stage; } ;
typedef TYPE_1__ ZSTDv07_DCtx ;


 scalar_t__ ZSTDds_skipFrame ;

int ZSTDv07_isSkipFrame(ZSTDv07_DCtx* dctx)
{
    return dctx->stage == ZSTDds_skipFrame;
}
