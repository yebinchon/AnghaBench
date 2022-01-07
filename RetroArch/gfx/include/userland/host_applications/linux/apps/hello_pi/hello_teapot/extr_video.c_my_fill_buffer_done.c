
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int COMPONENT_T ;


 scalar_t__ OMX_ErrorNone ;
 scalar_t__ OMX_FillThisBuffer (int ,int ) ;
 int eglBuffer ;
 int egl_render ;
 int exit (int) ;
 int ilclient_get_handle (int ) ;
 int printf (char*) ;

void my_fill_buffer_done(void* data, COMPONENT_T* comp)
{
  if (OMX_FillThisBuffer(ilclient_get_handle(egl_render), eglBuffer) != OMX_ErrorNone)
   {
      printf("OMX_FillThisBuffer failed in callback\n");
      exit(1);
   }
}
