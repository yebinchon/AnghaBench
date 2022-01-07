
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GXRModeObj ;


 int VIDEO_GetFrameBufferSize (int *) ;
 void* memalign (int,int ) ;

void* SYS_AllocateFramebuffer(GXRModeObj *rmode)
{
 return memalign(32, VIDEO_GetFrameBufferSize(rmode));
}
