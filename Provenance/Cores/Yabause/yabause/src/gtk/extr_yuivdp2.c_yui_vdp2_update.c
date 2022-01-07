
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef char gchar ;
typedef scalar_t__ gboolean ;
struct TYPE_4__ {int cursor; int buffer; int image; } ;
typedef TYPE_1__ YuiVdp2 ;


 int VDP2_DEBUG_STRING_SIZE ;
 int Vdp2DebugStatsGeneral (char*,scalar_t__*) ;
 int Vdp2DebugStatsNBG0 (char*,scalar_t__*) ;
 int Vdp2DebugStatsNBG1 (char*,scalar_t__*) ;
 int Vdp2DebugStatsNBG2 (char*,scalar_t__*) ;
 int Vdp2DebugStatsNBG3 (char*,scalar_t__*) ;
 int Vdp2DebugStatsRBG0 (char*,scalar_t__*) ;
 int * Vdp2DebugTexture (int,int*,int*) ;
 int YUI_VIEWER (int ) ;
 int gtk_text_buffer_set_text (int ,char*,int) ;
 int yui_vdp2_draw (TYPE_1__*,int *,int,int) ;
 int yui_viewer_clear (int ) ;

void yui_vdp2_update(YuiVdp2 * vdp2) {
 gchar nameTemp[VDP2_DEBUG_STRING_SIZE];
 gboolean isscrenabled;

 yui_viewer_clear(YUI_VIEWER(vdp2->image));

 switch(vdp2->cursor) {
  case 0:
   Vdp2DebugStatsGeneral(nameTemp, &isscrenabled);
   break;
  case 1:
   Vdp2DebugStatsNBG0(nameTemp, &isscrenabled);
   break;
  case 2:
   Vdp2DebugStatsNBG1(nameTemp, &isscrenabled);
   break;
  case 3:
   Vdp2DebugStatsNBG2(nameTemp, &isscrenabled);
   break;
  case 4:
   Vdp2DebugStatsNBG3(nameTemp, &isscrenabled);
   break;
  case 5:
   Vdp2DebugStatsRBG0(nameTemp, &isscrenabled);
   break;
 }

 if (vdp2->cursor > 0) {
  u32 * texture;
  int w, h;
  texture = Vdp2DebugTexture(vdp2->cursor - 1, &w, &h);
  yui_vdp2_draw(vdp2, texture, w, h);
 }

 if (isscrenabled) {
  gtk_text_buffer_set_text(vdp2->buffer, nameTemp, -1);
 } else {
  gtk_text_buffer_set_text(vdp2->buffer, "", -1);
 }
}
