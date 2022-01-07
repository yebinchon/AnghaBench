
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZBUFFv04_DCtx ;


 int DEBUGLOG (int,char*) ;
 size_t ZBUFF_decompressContinue (int *,void*,size_t*,void const*,size_t*) ;

size_t ZBUFFv04_decompressContinue(ZBUFFv04_DCtx* dctx, void* dst, size_t* maxDstSizePtr, const void* src, size_t* srcSizePtr)
{
    DEBUGLOG(5, "ZBUFFv04_decompressContinue");
    return ZBUFF_decompressContinue(dctx, dst, maxDstSizePtr, src, srcSizePtr);
}
