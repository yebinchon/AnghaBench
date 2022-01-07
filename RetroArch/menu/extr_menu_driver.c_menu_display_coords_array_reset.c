
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ vertices; } ;
struct TYPE_4__ {TYPE_1__ coords; } ;


 TYPE_2__ menu_disp_ca ;

void menu_display_coords_array_reset(void)
{
   menu_disp_ca.coords.vertices = 0;
}
