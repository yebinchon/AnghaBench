
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int video_coord_array_t ;


 int menu_disp_ca ;

video_coord_array_t *menu_display_get_coords_array(void)
{
   return &menu_disp_ca;
}
