
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ flagStaticTables; int * hufTableX4; int * dictEnd; int * vBase; int * base; int * previousDstEnd; int stage; int expected; } ;
typedef TYPE_1__ ZSTDv05_DCtx ;


 int HufLog ;
 int ZSTDv05_frameHeaderSize_min ;
 int ZSTDv05ds_getFrameHeaderSize ;

size_t ZSTDv05_decompressBegin(ZSTDv05_DCtx* dctx)
{
    dctx->expected = ZSTDv05_frameHeaderSize_min;
    dctx->stage = ZSTDv05ds_getFrameHeaderSize;
    dctx->previousDstEnd = ((void*)0);
    dctx->base = ((void*)0);
    dctx->vBase = ((void*)0);
    dctx->dictEnd = ((void*)0);
    dctx->hufTableX4[0] = HufLog;
    dctx->flagStaticTables = 0;
    return 0;
}
