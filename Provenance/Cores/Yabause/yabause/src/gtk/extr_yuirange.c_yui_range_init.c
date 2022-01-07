
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int combo; } ;
typedef TYPE_1__ YuiRange ;


 int GTK_BOX (TYPE_1__*) ;
 int GTK_CONTAINER (TYPE_1__*) ;
 int TRUE ;
 int gtk_box_pack_start (int ,int ,int ,int ,int ) ;
 int gtk_combo_box_new_text () ;
 int gtk_container_set_border_width (int ,int) ;

__attribute__((used)) static void yui_range_init (YuiRange * yfe) {
        gtk_container_set_border_width(GTK_CONTAINER(yfe), 10);

        yfe->combo = gtk_combo_box_new_text();

        gtk_box_pack_start(GTK_BOX(yfe), yfe->combo, TRUE, TRUE, 0);
}
