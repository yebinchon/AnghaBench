
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_3__ {int color; } ;


 size_t ARR_COUNT (TYPE_1__*) ;
 TYPE_1__* formats ;
 int khrn_image_to_rso_format (int ) ;
 int khrn_image_to_tf_format (int ) ;

void egl_config_install_configs(int type)
{
   uint32_t i;
   for (i = 0; i != ARR_COUNT(formats); ++i) {
      formats[i].color = (type == 0) ?
         khrn_image_to_rso_format(formats[i].color) :
         khrn_image_to_tf_format(formats[i].color);
   }
}
