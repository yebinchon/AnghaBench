
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char gchar ;
typedef int YuiPage ;
typedef int GtkWidget ;


 int FALSE ;
 int GTK_BOX (int *) ;
 int GTK_CONTAINER (int *) ;
 int GTK_FRAME (int *) ;
 int GTK_LABEL (int *) ;
 int GTK_SHADOW_NONE ;
 int TRUE ;
 int gtk_box_pack_start (int ,int *,int ,int ,int ) ;
 int gtk_container_add (int ,int *) ;
 int * gtk_frame_new (int *) ;
 int gtk_frame_set_label_widget (int ,int *) ;
 int gtk_frame_set_shadow_type (int ,int ) ;
 int * gtk_label_new (char*) ;
 int gtk_label_set_use_markup (int ,int ) ;
 int * gtk_vbox_new (int ,int ) ;
 int sprintf (char*,char*,char const*) ;

GtkWidget * yui_page_add(YuiPage * yp, const gchar * name) {
 GtkWidget * label;
 GtkWidget * frame;
 GtkWidget * box;
 gchar buffer[1024];

 frame = gtk_frame_new(((void*)0));

 gtk_box_pack_start(GTK_BOX(yp), frame, FALSE, TRUE, 0);
 gtk_frame_set_shadow_type(GTK_FRAME(frame), GTK_SHADOW_NONE);

 box = gtk_vbox_new(FALSE, 0);
 gtk_container_add(GTK_CONTAINER(frame), box);

 sprintf(buffer, "<b>%s</b>", name);

 label = gtk_label_new(buffer);
 gtk_frame_set_label_widget(GTK_FRAME(frame), label);
 gtk_label_set_use_markup(GTK_LABEL(label), TRUE);

 return box;
}
