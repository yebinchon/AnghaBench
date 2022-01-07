
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int features; } ;


 int EGL_OPENVG_BIT ;
 scalar_t__ FEATURES_UNPACK_MULTI (int ) ;
 int egl_config_get_api_support (int) ;
 TYPE_1__* formats ;

uint32_t egl_config_get_api_conformance(int id)
{

   return egl_config_get_api_support(id) & ~(FEATURES_UNPACK_MULTI(formats[id].features) ? EGL_OPENVG_BIT : 0);
}
