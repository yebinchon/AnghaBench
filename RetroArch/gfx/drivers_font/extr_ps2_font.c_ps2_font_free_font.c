
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * ps2_video; int gsFontM; } ;
typedef TYPE_1__ ps2_font_info_t ;


 int deinit_gsfont (int ) ;

__attribute__((used)) static void ps2_font_free_font(void *data, bool is_threaded)
{
   ps2_font_info_t *ps2 = (ps2_font_info_t *)data;
   deinit_gsfont(ps2->gsFontM);
   ps2->ps2_video = ((void*)0);
   ps2 = ((void*)0);
}
