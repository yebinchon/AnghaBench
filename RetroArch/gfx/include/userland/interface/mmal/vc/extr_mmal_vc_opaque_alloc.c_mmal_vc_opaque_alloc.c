
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MMAL_OPAQUE_IMAGE_HANDLE_T ;


 int mmal_vc_opaque_alloc_desc (char*) ;

MMAL_OPAQUE_IMAGE_HANDLE_T mmal_vc_opaque_alloc(void)
{
   return mmal_vc_opaque_alloc_desc("?");
}
