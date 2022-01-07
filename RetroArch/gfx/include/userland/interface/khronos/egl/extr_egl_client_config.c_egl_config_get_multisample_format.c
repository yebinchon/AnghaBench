
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int multisample; } ;
typedef int KHRN_IMAGE_FORMAT_T ;


 int EGL_MAX_CONFIGS ;
 TYPE_1__* formats ;
 int vcos_assert (int) ;

KHRN_IMAGE_FORMAT_T egl_config_get_multisample_format(int id)
{
   vcos_assert(id >= 0 && id < EGL_MAX_CONFIGS);

   return formats[id].multisample;
}
