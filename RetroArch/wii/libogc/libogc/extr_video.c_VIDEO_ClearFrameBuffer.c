
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int GXRModeObj ;


 int VIDEO_GetFrameBufferSize (int *) ;
 int __VIClearFramebuffer (void*,int ,int ) ;

void VIDEO_ClearFrameBuffer(GXRModeObj *rmode,void *fb,u32 color)
{
 __VIClearFramebuffer(fb, VIDEO_GetFrameBufferSize(rmode), color);
}
