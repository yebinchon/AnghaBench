
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int features; } ;
typedef int FEATURES_T ;


 scalar_t__ FEATURES_UNPACK_ALPHA (int ) ;
 scalar_t__ FEATURES_UNPACK_BLUE (int ) ;
 scalar_t__ FEATURES_UNPACK_DEPTH (int ) ;
 scalar_t__ FEATURES_UNPACK_GREEN (int ) ;
 scalar_t__ FEATURES_UNPACK_MASK (int ) ;
 scalar_t__ FEATURES_UNPACK_RED (int ) ;
 scalar_t__ FEATURES_UNPACK_STENCIL (int ) ;
 TYPE_1__* formats ;

bool egl_config_bpps_match(int id0, int id1)
{
   FEATURES_T config0 = formats[id0].features;
   FEATURES_T config1 = formats[id1].features;

   return
      FEATURES_UNPACK_RED(config0) == FEATURES_UNPACK_RED(config1) &&
      FEATURES_UNPACK_GREEN(config0) == FEATURES_UNPACK_GREEN(config1) &&
      FEATURES_UNPACK_BLUE(config0) == FEATURES_UNPACK_BLUE(config1) &&
      FEATURES_UNPACK_ALPHA(config0) == FEATURES_UNPACK_ALPHA(config1) &&
      FEATURES_UNPACK_DEPTH(config0) == FEATURES_UNPACK_DEPTH(config1) &&
      FEATURES_UNPACK_STENCIL(config0) == FEATURES_UNPACK_STENCIL(config1) &&
      FEATURES_UNPACK_MASK(config0) == FEATURES_UNPACK_MASK(config1);
}
