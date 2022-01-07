
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ boolean_t ;
struct TYPE_2__ {int v_depth; } ;


 int vc_render_font (int ) ;
 TYPE_1__ vinfo ;

__attribute__((used)) static void
vc_enable(boolean_t enable)
{
 vc_render_font(enable ? vinfo.v_depth : 0);
}
