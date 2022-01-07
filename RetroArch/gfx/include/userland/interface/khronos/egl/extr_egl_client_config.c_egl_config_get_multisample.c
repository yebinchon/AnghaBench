
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int features; } ;


 int EGL_MAX_CONFIGS ;
 int FEATURES_UNPACK_MULTI (int ) ;
 TYPE_1__* formats ;
 int vcos_assert (int) ;

bool egl_config_get_multisample(int id)
{
   vcos_assert(id >= 0 && id < EGL_MAX_CONFIGS);

   return FEATURES_UNPACK_MULTI(formats[id].features);
}
