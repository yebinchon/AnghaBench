
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_19__ {scalar_t__ cursor; struct TYPE_19__* hbox; struct TYPE_19__* vbox; int buffer; struct TYPE_19__* spin; } ;
typedef TYPE_1__ YuiScsp ;
typedef TYPE_1__ GtkWidget ;


 int FALSE ;
 int GTK_BOX (TYPE_1__*) ;
 int GTK_CONTAINER (TYPE_1__*) ;
 int GTK_POLICY_AUTOMATIC ;
 int GTK_SCROLLED_WINDOW (TYPE_1__*) ;
 int GTK_SIGNAL_FUNC (int ) ;
 int GTK_SPIN_BUTTON (TYPE_1__*) ;
 int GTK_TEXT_VIEW (TYPE_1__*) ;
 int GTK_WINDOW (TYPE_1__*) ;
 int G_OBJECT (TYPE_1__*) ;
 int TRUE ;
 int g_signal_connect (int ,char*,int ,TYPE_1__*) ;
 int gtk_box_pack_start (int ,TYPE_1__*,int ,int ,int) ;
 int gtk_box_set_spacing (int ,int) ;
 int gtk_container_add (int ,TYPE_1__*) ;
 int gtk_container_set_border_width (int ,int) ;
 TYPE_1__* gtk_hbutton_box_new () ;
 TYPE_1__* gtk_scrolled_window_new (int *,int *) ;
 int gtk_scrolled_window_set_policy (int ,int ,int ) ;
 TYPE_1__* gtk_spin_button_new_with_range (int ,int,int) ;
 int gtk_spin_button_set_range (int ,int ,int) ;
 int gtk_text_view_get_buffer (int ) ;
 TYPE_1__* gtk_text_view_new () ;
 int gtk_text_view_set_cursor_visible (int ,int ) ;
 int gtk_text_view_set_editable (int ,int ) ;
 TYPE_1__* gtk_vbox_new (int ,int) ;
 int gtk_window_set_title (int ,char*) ;
 int yui_scsp_destroy ;
 int yui_scsp_spin_cursor_changed ;

__attribute__((used)) static void yui_scsp_init (YuiScsp * yv) {
 gtk_window_set_title(GTK_WINDOW(yv), "SCSP");

 yv->vbox = gtk_vbox_new(FALSE, 2);
 gtk_container_set_border_width(GTK_CONTAINER(yv->vbox), 4);
 gtk_container_add(GTK_CONTAINER(yv), yv->vbox);

 yv->spin = gtk_spin_button_new_with_range(0, 31, 1);
 gtk_spin_button_set_range(GTK_SPIN_BUTTON(yv->spin), 0, 31);
 gtk_box_pack_start(GTK_BOX(yv->vbox), yv->spin, FALSE, FALSE, 4);
 g_signal_connect(G_OBJECT(yv->spin), "value-changed", GTK_SIGNAL_FUNC(yui_scsp_spin_cursor_changed), yv);

 g_signal_connect(G_OBJECT(yv), "delete-event", GTK_SIGNAL_FUNC(yui_scsp_destroy), ((void*)0));

 {
  GtkWidget * scroll = gtk_scrolled_window_new(((void*)0), ((void*)0));
  GtkWidget * text = gtk_text_view_new();
  gtk_scrolled_window_set_policy(GTK_SCROLLED_WINDOW(scroll), GTK_POLICY_AUTOMATIC, GTK_POLICY_AUTOMATIC);
  gtk_text_view_set_editable(GTK_TEXT_VIEW(text), FALSE);
  gtk_text_view_set_cursor_visible(GTK_TEXT_VIEW(text), FALSE);
  yv->buffer = gtk_text_view_get_buffer (GTK_TEXT_VIEW (text));
  gtk_container_add(GTK_CONTAINER(scroll), text);
  gtk_box_pack_start(GTK_BOX(yv->vbox), scroll, TRUE, TRUE, 4);
 }

 yv->hbox = gtk_hbutton_box_new();
 gtk_box_set_spacing(GTK_BOX(yv->hbox), 4);
 gtk_box_pack_start(GTK_BOX(yv->vbox ), yv->hbox, FALSE, FALSE, 4);

 yv->cursor = 0;
}
