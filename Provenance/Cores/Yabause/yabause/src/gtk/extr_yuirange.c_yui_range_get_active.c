
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int gint ;
struct TYPE_3__ {int combo; } ;
typedef TYPE_1__ YuiRange ;


 int GTK_COMBO_BOX (int ) ;
 int gtk_combo_box_get_active (int ) ;

gint yui_range_get_active(YuiRange * range) {
 return gtk_combo_box_get_active(GTK_COMBO_BOX(range->combo));
}
