
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int action_group; } ;
typedef TYPE_1__ YuiWindow ;
typedef int GtkWidget ;
typedef int GtkAction ;


 int GTK_CONTAINER (int *) ;
 int GTK_MENU_ITEM (int *) ;
 int G_CALLBACK (int ) ;
 int ToggleFPS ;
 int YuiLoadState ;
 int YuiSaveState ;
 char* _ (char*) ;
 int g_signal_connect (int *,char*,int ,TYPE_1__*) ;
 int g_signal_connect_swapped (int *,char*,int ,TYPE_1__*) ;
 int gtk_action_connect_proxy (int *,int *) ;
 int * gtk_action_create_menu_item (int *) ;
 int * gtk_action_group_get_action (int ,char*) ;
 int * gtk_check_menu_item_new_with_mnemonic (char*) ;
 int gtk_container_add (int ,int *) ;
 int * gtk_image_menu_item_new_from_stock (char*,int *) ;
 int * gtk_menu_bar_new () ;
 int * gtk_menu_item_new_with_mnemonic (char*) ;
 int gtk_menu_item_set_submenu (int ,int *) ;
 int * gtk_menu_new () ;
 int * gtk_separator_menu_item_new () ;
 int openAboutDialog ;
 int yui_conf ;
 int yui_m68k_new ;
 int yui_mem_new ;
 int yui_msh_new ;
 int yui_screenshot_new ;
 int yui_scsp_new ;
 int yui_scudsp_new ;
 int yui_ssh_new ;
 int yui_transfer_new ;
 int yui_vdp1_new ;
 int yui_vdp2_new ;
 int yui_window_show_log ;

GtkWidget* create_menu(YuiWindow * window1) {
  GtkWidget *menubar1;
  GtkWidget *menuitem1;
  GtkWidget *menuitem1_menu;
  GtkWidget *new1;
  GtkWidget *view1;
  GtkWidget *view1_menu;
  GtkWidget *fps1;
  GtkWidget *frameLimiter;
  GtkWidget *layer1;
  GtkWidget *layer1_menu;
  GtkWidget *log;
  GtkWidget *menuitem3;
  GtkWidget *menuitem3_menu;
  GtkWidget *msh;
  GtkWidget *ssh;
  GtkWidget *vdp2;
  GtkWidget *vdp1;
  GtkWidget *m68k;
  GtkWidget *scudsp;
  GtkWidget *scsp;
  GtkWidget *menuitem4;
  GtkWidget *menuitem4_menu;
  GtkWidget *about1;
  GtkWidget *transfer;
  GtkWidget *memory;
  GtkWidget *screenshot;

  menubar1 = gtk_menu_bar_new ();

  menuitem1 = gtk_menu_item_new_with_mnemonic ("_Yabause");
  gtk_container_add (GTK_CONTAINER (menubar1), menuitem1);

  menuitem1_menu = gtk_menu_new ();
  gtk_menu_item_set_submenu (GTK_MENU_ITEM (menuitem1), menuitem1_menu);

  new1 = gtk_image_menu_item_new_from_stock("gtk-preferences", ((void*)0));
  g_signal_connect(new1, "activate", yui_conf, 0);
  gtk_container_add (GTK_CONTAINER (menuitem1_menu), new1);

  gtk_container_add(GTK_CONTAINER(menuitem1_menu), gtk_action_create_menu_item(gtk_action_group_get_action(window1->action_group, "run")));
  gtk_container_add(GTK_CONTAINER(menuitem1_menu), gtk_action_create_menu_item(gtk_action_group_get_action(window1->action_group, "pause")));
  gtk_container_add(GTK_CONTAINER(menuitem1_menu), gtk_action_create_menu_item(gtk_action_group_get_action(window1->action_group, "reset")));

  transfer = gtk_menu_item_new_with_mnemonic (_("Transfer"));
  gtk_container_add (GTK_CONTAINER (menuitem1_menu), transfer);
  g_signal_connect_swapped(transfer, "activate", G_CALLBACK(yui_transfer_new), window1);

  screenshot = gtk_menu_item_new_with_mnemonic (_("Screenshot"));
  gtk_container_add (GTK_CONTAINER (menuitem1_menu), screenshot);
  g_signal_connect_swapped(screenshot, "activate", G_CALLBACK(yui_screenshot_new), window1);

  frameLimiter = gtk_check_menu_item_new_with_mnemonic (_("Frame Skip/Limiter"));
  {
    GtkAction * action = gtk_action_group_get_action(window1->action_group, "frameskip");
    gtk_action_connect_proxy(action, frameLimiter);
  }
  gtk_container_add (GTK_CONTAINER (menuitem1_menu), frameLimiter);

  {
    GtkWidget * savestate_menu;
    GtkWidget * savestate;
    GtkWidget * savestate_save;
    GtkWidget * savestate_load;

    savestate = gtk_menu_item_new_with_mnemonic(_("Save State"));
    gtk_container_add(GTK_CONTAINER(menuitem1_menu), savestate);

    savestate_menu = gtk_menu_new();
    gtk_menu_item_set_submenu(GTK_MENU_ITEM(savestate), savestate_menu);

    savestate_save = gtk_menu_item_new_with_mnemonic(_("Save"));
    gtk_container_add(GTK_CONTAINER(savestate_menu), savestate_save);
    g_signal_connect_swapped(savestate_save, "activate", G_CALLBACK(YuiSaveState), ((void*)0));

    savestate_load = gtk_menu_item_new_with_mnemonic(_("Load"));
    gtk_container_add(GTK_CONTAINER(savestate_menu), savestate_load);
    g_signal_connect_swapped(savestate_load, "activate", G_CALLBACK(YuiLoadState), ((void*)0));
  }

  gtk_container_add (GTK_CONTAINER (menuitem1_menu), gtk_separator_menu_item_new ());

  gtk_container_add(GTK_CONTAINER(menuitem1_menu), gtk_action_create_menu_item(gtk_action_group_get_action(window1->action_group, "quit")));

  view1 = gtk_menu_item_new_with_mnemonic (_("_View"));
  gtk_container_add (GTK_CONTAINER (menubar1), view1);

  view1_menu = gtk_menu_new ();
  gtk_menu_item_set_submenu (GTK_MENU_ITEM (view1), view1_menu);

  fps1 = gtk_check_menu_item_new_with_mnemonic (_("FPS"));
  g_signal_connect(fps1, "activate", G_CALLBACK(ToggleFPS), ((void*)0));
  gtk_container_add (GTK_CONTAINER (view1_menu), fps1);

  layer1 = gtk_menu_item_new_with_mnemonic (_("Layer"));
  gtk_container_add (GTK_CONTAINER (view1_menu), layer1);

  layer1_menu = gtk_menu_new ();
  gtk_menu_item_set_submenu (GTK_MENU_ITEM (layer1), layer1_menu);

  gtk_container_add(GTK_CONTAINER(layer1_menu), gtk_action_create_menu_item(gtk_action_group_get_action(window1->action_group, "toggle_vdp1")));
  gtk_container_add(GTK_CONTAINER(layer1_menu), gtk_action_create_menu_item(gtk_action_group_get_action(window1->action_group, "toggle_nbg0")));
  gtk_container_add(GTK_CONTAINER(layer1_menu), gtk_action_create_menu_item(gtk_action_group_get_action(window1->action_group, "toggle_nbg1")));
  gtk_container_add(GTK_CONTAINER(layer1_menu), gtk_action_create_menu_item(gtk_action_group_get_action(window1->action_group, "toggle_nbg2")));
  gtk_container_add(GTK_CONTAINER(layer1_menu), gtk_action_create_menu_item(gtk_action_group_get_action(window1->action_group, "toggle_nbg3")));
  gtk_container_add(GTK_CONTAINER(layer1_menu), gtk_action_create_menu_item(gtk_action_group_get_action(window1->action_group, "toggle_rbg0")));

  gtk_container_add(GTK_CONTAINER(view1_menu), gtk_action_create_menu_item(gtk_action_group_get_action(window1->action_group, "fullscreen")));

  log = gtk_menu_item_new_with_mnemonic (_("Log"));
  g_signal_connect_swapped(log, "activate", G_CALLBACK(yui_window_show_log), window1);
  gtk_container_add(GTK_CONTAINER(view1_menu), log);

  menuitem3 = gtk_menu_item_new_with_mnemonic (_("_Debug"));
  gtk_container_add (GTK_CONTAINER (menubar1), menuitem3);

  menuitem3_menu = gtk_menu_new ();
  gtk_menu_item_set_submenu (GTK_MENU_ITEM (menuitem3), menuitem3_menu);

  msh = gtk_menu_item_new_with_mnemonic ("MSH2");
  gtk_container_add (GTK_CONTAINER (menuitem3_menu), msh);
  g_signal_connect_swapped(msh, "activate", G_CALLBACK(yui_msh_new), window1);

  ssh = gtk_menu_item_new_with_mnemonic ("SSH2");
  gtk_container_add (GTK_CONTAINER (menuitem3_menu), ssh);
  g_signal_connect_swapped(ssh, "activate", G_CALLBACK(yui_ssh_new), window1);

  vdp2 = gtk_menu_item_new_with_mnemonic ("Vdp1");
  gtk_container_add (GTK_CONTAINER (menuitem3_menu), vdp2);
  g_signal_connect_swapped(vdp2, "activate", G_CALLBACK(yui_vdp1_new), window1);

  vdp1 = gtk_menu_item_new_with_mnemonic ("Vdp2");
  gtk_container_add (GTK_CONTAINER (menuitem3_menu), vdp1);
  g_signal_connect_swapped(vdp1, "activate", G_CALLBACK(yui_vdp2_new), window1);

  m68k = gtk_menu_item_new_with_mnemonic ("M68K");
  gtk_container_add (GTK_CONTAINER (menuitem3_menu), m68k);
  g_signal_connect_swapped(m68k, "activate", G_CALLBACK(yui_m68k_new), window1);

  scudsp = gtk_menu_item_new_with_mnemonic ("SCU-DSP");
  gtk_container_add (GTK_CONTAINER (menuitem3_menu), scudsp);
  g_signal_connect_swapped(scudsp, "activate", G_CALLBACK(yui_scudsp_new), window1);

  scsp = gtk_menu_item_new_with_mnemonic ("SCSP");
  gtk_container_add (GTK_CONTAINER (menuitem3_menu), scsp);
  g_signal_connect_swapped(scsp, "activate", G_CALLBACK(yui_scsp_new), window1);

  gtk_container_add (GTK_CONTAINER (menuitem3_menu), gtk_separator_menu_item_new ());

  memory = gtk_menu_item_new_with_mnemonic (_("Memory dump"));
  gtk_container_add (GTK_CONTAINER (menuitem3_menu), memory);
  g_signal_connect_swapped(memory, "activate", G_CALLBACK(yui_mem_new), window1);

  menuitem4 = gtk_menu_item_new_with_mnemonic (_("_Help"));
  gtk_container_add (GTK_CONTAINER (menubar1), menuitem4);

  menuitem4_menu = gtk_menu_new ();
  gtk_menu_item_set_submenu (GTK_MENU_ITEM (menuitem4), menuitem4_menu);

  about1 = gtk_image_menu_item_new_from_stock ("gtk-about", ((void*)0));
  gtk_container_add (GTK_CONTAINER (menuitem4_menu), about1);
  g_signal_connect(about1, "activate", G_CALLBACK(openAboutDialog), window1);

  return menubar1;
}
