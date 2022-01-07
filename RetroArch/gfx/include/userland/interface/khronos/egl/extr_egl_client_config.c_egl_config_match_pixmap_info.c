
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int features; } ;
struct TYPE_4__ {int format; } ;
typedef TYPE_1__ KHRN_IMAGE_WRAP_T ;
typedef int KHRN_IMAGE_FORMAT_T ;
typedef int FEATURES_T ;


 int EGL_MAX_CONFIGS ;
 scalar_t__ FEATURES_UNPACK_ALPHA (int ) ;
 scalar_t__ FEATURES_UNPACK_BLUE (int ) ;
 scalar_t__ FEATURES_UNPACK_GREEN (int ) ;
 scalar_t__ FEATURES_UNPACK_RED (int ) ;
 TYPE_2__* formats ;
 scalar_t__ khrn_image_get_alpha_size (int ) ;
 scalar_t__ khrn_image_get_blue_size (int ) ;
 scalar_t__ khrn_image_get_green_size (int ) ;
 scalar_t__ khrn_image_get_red_size (int ) ;
 int vcos_assert (int) ;

bool egl_config_match_pixmap_info(int id, KHRN_IMAGE_WRAP_T *image)
{
   FEATURES_T features = formats[id].features;
   KHRN_IMAGE_FORMAT_T format = image->format;

   vcos_assert(id >= 0 && id < EGL_MAX_CONFIGS);

   return
      khrn_image_get_red_size(format) == FEATURES_UNPACK_RED(features) &&
      khrn_image_get_green_size(format) == FEATURES_UNPACK_GREEN(features) &&
      khrn_image_get_blue_size(format) == FEATURES_UNPACK_BLUE(features) &&
      khrn_image_get_alpha_size(format) == FEATURES_UNPACK_ALPHA(features);
}
