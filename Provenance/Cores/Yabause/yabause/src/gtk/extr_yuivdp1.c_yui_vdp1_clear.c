
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int image; int buffer; int store; } ;
typedef TYPE_1__ YuiVdp1 ;


 int YUI_VIEWER (int ) ;
 int gtk_list_store_clear (int ) ;
 int gtk_text_buffer_set_text (int ,char*,int) ;
 int yui_viewer_clear (int ) ;

__attribute__((used)) static void yui_vdp1_clear(YuiVdp1 * vdp1) {
 gtk_list_store_clear(vdp1->store);
 gtk_text_buffer_set_text(vdp1->buffer, "", -1);
 yui_viewer_clear(YUI_VIEWER(vdp1->image));
}
