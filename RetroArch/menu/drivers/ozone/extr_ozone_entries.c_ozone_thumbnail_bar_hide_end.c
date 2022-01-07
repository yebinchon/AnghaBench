
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int show_thumbnail_bar; } ;
typedef TYPE_1__ ozone_handle_t ;



__attribute__((used)) static void ozone_thumbnail_bar_hide_end(void *userdata)
{
   ozone_handle_t *ozone = (ozone_handle_t*) userdata;
   ozone->show_thumbnail_bar = 0;
}
