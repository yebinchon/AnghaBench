
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * options; int * entry_h; int * entry_w; } ;
typedef TYPE_1__ YuiResolution ;
typedef int GtkWidget ;


 int GTK_BOX (TYPE_1__*) ;
 int GTK_COMBO_BOX (int *) ;
 int GTK_CONTAINER (TYPE_1__*) ;
 int GTK_ENTRY (int *) ;
 int G_CALLBACK (int ) ;
 int TRUE ;
 int g_signal_connect (int *,char*,int ,TYPE_1__*) ;
 int gtk_box_pack_start (int ,int *,int ,int ,int ) ;
 int gtk_combo_box_append_text (int ,char*) ;
 int * gtk_combo_box_new_text () ;
 int gtk_container_set_border_width (int ,int) ;
 void* gtk_entry_new () ;
 int gtk_entry_set_width_chars (int ,int) ;
 int * gtk_label_new (char*) ;
 int yui_resolution_height_changed ;
 int yui_resolution_options_changed ;
 int yui_resolution_width_changed ;

__attribute__((used)) static void yui_resolution_init(YuiResolution * yr) {
 GtkWidget * label_w;
 GtkWidget * label_h;

 gtk_container_set_border_width (GTK_CONTAINER (yr), 10);

 label_w = gtk_label_new ("Width");
 gtk_box_pack_start(GTK_BOX(yr), label_w, TRUE, TRUE, 0);

 yr->entry_w = gtk_entry_new ();
 gtk_entry_set_width_chars(GTK_ENTRY(yr->entry_w), 8);
 gtk_box_pack_start(GTK_BOX(yr), yr->entry_w, TRUE, TRUE, 0);

 label_h = gtk_label_new ("Height");
 gtk_box_pack_start(GTK_BOX(yr), label_h, TRUE, TRUE, 0);

 yr->entry_h = gtk_entry_new ();
 gtk_entry_set_width_chars(GTK_ENTRY(yr->entry_h), 8);
 gtk_box_pack_start(GTK_BOX(yr), yr->entry_h, TRUE, TRUE, 0);

 yr->options = gtk_combo_box_new_text();
 gtk_combo_box_append_text(GTK_COMBO_BOX(yr->options), "Window");
 gtk_combo_box_append_text(GTK_COMBO_BOX(yr->options), "Fullscreen");
 gtk_combo_box_append_text(GTK_COMBO_BOX(yr->options), "Keep ratio");
 gtk_box_pack_start(GTK_BOX(yr), yr->options, TRUE, TRUE, 0);

 g_signal_connect(yr->entry_w, "changed", G_CALLBACK(yui_resolution_width_changed), yr);
 g_signal_connect(yr->entry_h, "changed", G_CALLBACK(yui_resolution_height_changed), yr);
 g_signal_connect(yr->options, "changed", G_CALLBACK(yui_resolution_options_changed), yr);
}
