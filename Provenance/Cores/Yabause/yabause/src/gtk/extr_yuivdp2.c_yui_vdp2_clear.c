
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buffer; } ;
typedef TYPE_1__ YuiVdp2 ;


 int gtk_text_buffer_set_text (int ,char*,int) ;

__attribute__((used)) static void yui_vdp2_clear(YuiVdp2 * vdp2) {
 gtk_text_buffer_set_text(vdp2->buffer, "", -1);
}
