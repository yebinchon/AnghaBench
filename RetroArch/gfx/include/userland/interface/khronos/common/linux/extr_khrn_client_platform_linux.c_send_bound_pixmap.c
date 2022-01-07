
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int used; int pixmap; scalar_t__ egl_image; } ;
typedef int KHRN_IMAGE_WRAP_T ;


 int NUM_PIXMAP_BINDINGS ;
 int khrn_platform_release_pixmap_info (int ,int *) ;
 TYPE_1__* pixmap_binding ;
 int platform_get_pixmap_info (int ,int *) ;
 int set_egl_image_color_data (scalar_t__,int *) ;
 int vcos_assert (int) ;
 int vcos_log_trace (char*,int,int) ;

__attribute__((used)) static void send_bound_pixmap(int i)
{
   KHRN_IMAGE_WRAP_T image;

   vcos_log_trace("send_bound_pixmap %d %d", i, (int)pixmap_binding[i].egl_image);

   vcos_assert(i >= 0 && i < NUM_PIXMAP_BINDINGS);
   vcos_assert(pixmap_binding[i].used);

   platform_get_pixmap_info(pixmap_binding[i].pixmap, &image);
   set_egl_image_color_data(pixmap_binding[i].egl_image, &image);
   khrn_platform_release_pixmap_info(pixmap_binding[i].pixmap, &image);
}
