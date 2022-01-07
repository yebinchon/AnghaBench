
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {struct TYPE_16__* bpListRenderer; struct TYPE_16__* bpList; struct TYPE_16__* hboxmain; void* bpListColumn; void* bpListStore; struct TYPE_16__* regListRenderer2; struct TYPE_16__* regList; void* regListColumn2; void* regListColumn1; struct TYPE_16__* regListRenderer1; void* regListStore; struct TYPE_16__* uLabel; struct TYPE_16__* uFrame; struct TYPE_16__* vboxmain; struct TYPE_16__* hbox; struct TYPE_16__* vbox; } ;
typedef TYPE_1__ YuiM68k ;


 int FALSE ;
 int GTK_BOX (TYPE_1__*) ;
 int GTK_CELL_RENDERER_MODE_EDITABLE ;
 int GTK_CONTAINER (TYPE_1__*) ;
 int GTK_SIGNAL_FUNC (int ) ;
 int GTK_TREE_MODEL (void*) ;
 int GTK_TREE_VIEW (TYPE_1__*) ;
 int GTK_WINDOW (TYPE_1__*) ;
 int G_OBJECT (TYPE_1__*) ;
 int G_TYPE_STRING ;
 int TRUE ;
 int g_object_set (int ,char*,int ,char*,int ,int *) ;
 int g_signal_connect (int ,char*,int ,TYPE_1__*) ;
 int gtk_box_pack_start (int ,TYPE_1__*,int ,int ,int) ;
 void* gtk_cell_renderer_text_new () ;
 int gtk_container_add (int ,TYPE_1__*) ;
 int gtk_container_set_border_width (int ,int) ;
 TYPE_1__* gtk_frame_new (char*) ;
 TYPE_1__* gtk_hbox_new (int ,int) ;
 TYPE_1__* gtk_hbutton_box_new () ;
 TYPE_1__* gtk_label_new (int *) ;
 void* gtk_list_store_new (int,int ,...) ;
 int gtk_tree_view_append_column (int ,void*) ;
 void* gtk_tree_view_column_new_with_attributes (char*,TYPE_1__*,char*,int,int *) ;
 void* gtk_tree_view_new_with_model (int ) ;
 void* gtk_vbox_new (int ,int) ;
 int gtk_window_set_resizable (int ,int ) ;
 int gtk_window_set_title (int ,char*) ;
 int yui_m68k_destroy ;
 int yui_m68k_editedBp ;
 int yui_m68k_editedReg ;

__attribute__((used)) static void yui_m68k_init (YuiM68k * m68k) {
  gtk_window_set_title(GTK_WINDOW(m68k), "M68K");
  gtk_window_set_resizable( GTK_WINDOW(m68k), FALSE );

  m68k->vbox = gtk_vbox_new(FALSE, 2);
  gtk_container_set_border_width( GTK_CONTAINER( m68k->vbox ),4 );
  gtk_container_add (GTK_CONTAINER (m68k), m68k->vbox);

  m68k->hboxmain = gtk_hbox_new(FALSE, 2);
  gtk_container_set_border_width( GTK_CONTAINER( m68k->hboxmain ),4 );
  gtk_box_pack_start( GTK_BOX( m68k->vbox ), m68k->hboxmain, FALSE, FALSE, 4 );

  m68k->hbox = gtk_hbutton_box_new();
  gtk_container_set_border_width( GTK_CONTAINER( m68k->hbox ),4 );
  gtk_box_pack_start( GTK_BOX( m68k->vbox ), m68k->hbox, FALSE, FALSE, 4 );

  m68k->vboxmain = gtk_vbox_new(FALSE, 2);
  gtk_container_set_border_width( GTK_CONTAINER( m68k->vboxmain ),4 );
  gtk_box_pack_start( GTK_BOX( m68k->hboxmain ), m68k->vboxmain, FALSE, FALSE, 4 );



  m68k->uFrame = gtk_frame_new("Disassembled code");
  gtk_box_pack_start( GTK_BOX( m68k->vboxmain ), m68k->uFrame, FALSE, FALSE, 4 );

  m68k->uLabel = gtk_label_new(((void*)0));
  gtk_container_add (GTK_CONTAINER (m68k->uFrame), m68k->uLabel );



  m68k->regListStore = gtk_list_store_new(2,G_TYPE_STRING,G_TYPE_STRING);
  m68k->regList = gtk_tree_view_new_with_model( GTK_TREE_MODEL(m68k->regListStore) );
  m68k->regListRenderer1 = gtk_cell_renderer_text_new();
  m68k->regListRenderer2 = gtk_cell_renderer_text_new();
  g_object_set(G_OBJECT(m68k->regListRenderer2), "editable", TRUE, "mode", GTK_CELL_RENDERER_MODE_EDITABLE, ((void*)0) );
  m68k->regListColumn1 = gtk_tree_view_column_new_with_attributes("Register", m68k->regListRenderer1, "text", 0, ((void*)0));
  gtk_tree_view_append_column(GTK_TREE_VIEW(m68k->regList), m68k->regListColumn1);
  m68k->regListColumn2 = gtk_tree_view_column_new_with_attributes("Value", m68k->regListRenderer2, "text", 1, ((void*)0));
  gtk_tree_view_append_column(GTK_TREE_VIEW(m68k->regList), m68k->regListColumn2);
  gtk_box_pack_start( GTK_BOX( m68k->hboxmain ), m68k->regList, FALSE, FALSE, 4 );
  g_signal_connect(G_OBJECT(m68k->regListRenderer2), "edited", GTK_SIGNAL_FUNC(yui_m68k_editedReg), m68k );



  m68k->bpListStore = gtk_list_store_new(1,G_TYPE_STRING);
  m68k->bpList = gtk_tree_view_new_with_model( GTK_TREE_MODEL(m68k->bpListStore) );
  m68k->bpListRenderer = gtk_cell_renderer_text_new();
  g_object_set(G_OBJECT(m68k->bpListRenderer), "editable", TRUE, "mode", GTK_CELL_RENDERER_MODE_EDITABLE, ((void*)0) );
  m68k->bpListColumn = gtk_tree_view_column_new_with_attributes("Breakpoints", m68k->bpListRenderer, "text", 0, ((void*)0));
  gtk_tree_view_append_column(GTK_TREE_VIEW(m68k->bpList), m68k->bpListColumn);
  gtk_box_pack_start( GTK_BOX( m68k->hboxmain ), m68k->bpList, FALSE, FALSE, 4 );
  g_signal_connect(G_OBJECT(m68k->bpListRenderer), "edited", GTK_SIGNAL_FUNC(yui_m68k_editedBp), m68k );

  g_signal_connect(G_OBJECT(m68k), "delete-event", GTK_SIGNAL_FUNC(yui_m68k_destroy), ((void*)0));
}
