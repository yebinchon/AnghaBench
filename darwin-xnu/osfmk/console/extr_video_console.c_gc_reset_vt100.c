
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int v_rows; } ;


 int ATTR_NONE ;
 int COLOR_BACKGROUND ;
 int COLOR_FOREGROUND ;
 int FALSE ;
 int TRUE ;
 int gc_attr ;
 scalar_t__* gc_charset ;
 scalar_t__ gc_charset_select ;
 scalar_t__ gc_relative_origin ;
 int gc_reset_tabs () ;
 int gc_scrreg_bottom ;
 scalar_t__ gc_scrreg_top ;
 int gc_update_color (int ,int ) ;
 int gc_wrap_mode ;
 TYPE_1__ vinfo ;

__attribute__((used)) static void
gc_reset_vt100(void)
{
 gc_reset_tabs();
 gc_scrreg_top = 0;
 gc_scrreg_bottom = vinfo.v_rows;
 gc_attr = ATTR_NONE;
 gc_charset[0] = gc_charset[1] = 0;
 gc_charset_select = 0;
 gc_wrap_mode = 1;
 gc_relative_origin = 0;
 gc_update_color(COLOR_BACKGROUND, FALSE);
 gc_update_color(COLOR_FOREGROUND, TRUE);
}
