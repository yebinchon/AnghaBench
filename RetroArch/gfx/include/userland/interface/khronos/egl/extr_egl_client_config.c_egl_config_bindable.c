
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int features; } ;
typedef int EGLenum ;


 int EGL_MAX_CONFIGS ;



 int UNREACHABLE () ;
 int bindable_rgb (int ) ;
 int bindable_rgba (int ) ;
 TYPE_1__* formats ;
 int vcos_assert (int) ;

bool egl_config_bindable(int id, EGLenum format)
{
   vcos_assert(id >= 0 && id < EGL_MAX_CONFIGS);
   switch (format) {
   case 130:
      return 1;
   case 129:
      return bindable_rgb(formats[id].features);
   case 128:
      return bindable_rgba(formats[id].features);
   default:
      UNREACHABLE();
      return 0;
   }
}
