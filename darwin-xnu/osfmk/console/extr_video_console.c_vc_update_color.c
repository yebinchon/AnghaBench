
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ boolean_t ;
struct TYPE_2__ {size_t v_depth; } ;


 void* vc_color_back ;
 void* vc_color_fore ;
 size_t* vc_color_index_table ;
 void*** vc_colors ;
 TYPE_1__ vinfo ;

__attribute__((used)) static void
vc_update_color(int color, boolean_t fore)
{
 if (!vinfo.v_depth)
  return;
 if (fore) {
         vc_color_fore = vc_colors[color][vc_color_index_table[vinfo.v_depth]];
 } else {
  vc_color_back = vc_colors[color][vc_color_index_table[vinfo.v_depth]];
 }
}
