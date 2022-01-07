
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int s32 ;
struct TYPE_3__ {int fbWidth; } ;
typedef TYPE_1__ GXRModeObj ;


 int VIDEO_SetPostRetraceCallback (int *) ;
 int VI_DISPLAY_PIX_SZ ;
 int __console_init_ex (scalar_t__,int,int,int,int,int,int) ;
 scalar_t__ _console_buffer ;
 int free (scalar_t__) ;
 scalar_t__ malloc (int) ;

s32 CON_InitEx(GXRModeObj *rmode, s32 conXOrigin,s32 conYOrigin,s32 conWidth,s32 conHeight)
{
 VIDEO_SetPostRetraceCallback(((void*)0));
 if(_console_buffer)
  free(_console_buffer);

 _console_buffer = malloc(conWidth*conHeight*VI_DISPLAY_PIX_SZ);
 if(!_console_buffer) return -1;

 __console_init_ex(_console_buffer,conXOrigin,conYOrigin,rmode->fbWidth*VI_DISPLAY_PIX_SZ,conWidth,conHeight,conWidth*VI_DISPLAY_PIX_SZ);

 return 0;
}
