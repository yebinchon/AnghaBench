
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int * vbox; } ;
typedef int GtkWidget ;
typedef int GtkTreeViewColumn ;
typedef int GtkTreeStore ;
typedef int GtkTreePath ;
typedef int GtkTreeIter ;
typedef int GtkCellRenderer ;


 int CDCoreList ;
 int FALSE ;
 int GDK_WINDOW_TYPE_HINT_DIALOG ;
 int GTK_BOX (int *) ;
 int GTK_CAN_DEFAULT ;
 int GTK_CONTAINER (int *) ;
 TYPE_1__* GTK_DIALOG (int *) ;
 int GTK_NOTEBOOK (int *) ;
 int GTK_POLICY_AUTOMATIC ;
 int GTK_POLICY_NEVER ;
 int GTK_RANGE (int *) ;
 int GTK_RESPONSE_CANCEL ;
 int GTK_RESPONSE_OK ;
 int GTK_SCROLLED_WINDOW (int *) ;
 int GTK_TOGGLE_BUTTON (int *) ;
 int GTK_TREE_MODEL (int *) ;
 int GTK_TREE_VIEW (int *) ;
 int GTK_WIDGET_SET_FLAGS (int *,int ) ;
 int GTK_WINDOW (int *) ;
 int G_CALLBACK (int ) ;
 int G_TYPE_STRING ;
 int M68KCoreList ;
 int OSDCoreList ;
 int PERCoreList ;


 int SH2CoreList ;
 int SNDCoreList ;
 int TRUE ;
 int VIDCoreList ;
 int YUI_CHECK_BUTTON (int *) ;
 int YUI_FILE_ENTRY_BROWSE ;
 int YUI_FILE_ENTRY_DIRECTORY ;
 int YUI_PAGE (int *) ;
 int YUI_RANGE (int *) ;
 int _ (char*) ;
 int bilinear_toggled ;
 int carttypes ;
 int cdcores ;
 int cores_to_range (int ,int *) ;
 int disable_enable_audio_sync ;
 int disable_enable_fixed_base_time ;
 int frameskip_toggled ;
 int g_key_file_get_integer (int ,char*,char*,int *) ;
 int g_signal_connect (int *,char*,int ,int *) ;
 int gtk_box_pack_start (int ,int *,int ,int ,int ) ;
 int * gtk_button_new_from_stock (char*) ;
 int * gtk_cell_renderer_text_new () ;
 int * gtk_check_button_new_with_label (char*) ;
 int gtk_container_add (int ,int *) ;
 int gtk_container_set_border_width (int ,int) ;
 int gtk_dialog_add_action_widget (TYPE_1__*,int *,int ) ;
 int * gtk_dialog_new () ;
 int * gtk_hbox_new (int ,int ) ;
 int * gtk_hscale_new_with_range (int ,int,int) ;
 int gtk_label_new (int ) ;
 int gtk_notebook_append_page (int ,int *,int ) ;
 int * gtk_notebook_new () ;
 int gtk_range_set_value (int ,int) ;
 int * gtk_scrolled_window_new (int *,int *) ;
 int gtk_scrolled_window_set_policy (int ,int ,int ) ;
 int gtk_toggle_button_set_active (int ,int) ;
 int gtk_tree_path_free (int *) ;
 int * gtk_tree_path_new_from_string (char*) ;
 int gtk_tree_store_append (int *,int *,int *) ;
 int * gtk_tree_store_new (int,int ) ;
 int gtk_tree_store_set (int *,int *,int ,char*,int) ;
 int gtk_tree_view_append_column (int ,int *) ;
 int * gtk_tree_view_column_new_with_attributes (char*,int *,char*,int ,int *) ;
 int gtk_tree_view_expand_all (int ) ;
 int * gtk_tree_view_new_with_model (int ) ;
 int gtk_tree_view_set_cursor (int ,int *,int *,int ) ;
 int gtk_tree_view_set_headers_visible (int ,int ) ;
 int * gtk_vbox_new (int ,int ) ;
 int gtk_widget_hide (int *) ;
 int gtk_widget_set_sensitive (int *,int ) ;
 int gtk_widget_show (int *) ;
 int gtk_widget_show_all (int *) ;
 int gtk_window_set_icon_name (int ,char*) ;
 int gtk_window_set_resizable (int ,int ) ;
 int gtk_window_set_title (int ,char*) ;
 int gtk_window_set_type_hint (int ,int ) ;
 int hide_show_cart_path ;
 int hide_show_netlink ;
 int keyfile ;
 int m68kinterpreters ;
 int osdcores ;
 int percores ;
 int pertype_changed ;
 int regions ;
 int sh2interpreters ;
 int sndcores ;
 int vidcores ;
 int vidformats ;
 int volume_changed ;
 int yui_check_button_get_active (int ) ;
 int * yui_check_button_new (int ,int ,char*,char*) ;
 int * yui_file_entry_new (int ,char*,char*,int,char*) ;
 int * yui_page_add (int ,int ) ;
 int * yui_page_new (int ) ;
 int yui_range_get_active (int ) ;
 int * yui_range_new (int ,char*,char*,int ) ;
 int * yui_resolution_new (int ,char*) ;

GtkWidget* create_dialog1(void) {
  GtkWidget *dialog1;
  GtkWidget *notebook1;
  GtkWidget *vbox17;
  GtkWidget *hbox22;
  GtkWidget *button11;
  GtkWidget *button12;
  GtkWidget * general, * video_sound, * cart_memory, *advanced, * sound;
  GtkWidget * box;
  u8 perid;

  cores_to_range(SH2CoreList, &sh2interpreters);
  cores_to_range(M68KCoreList, &m68kinterpreters);
  cores_to_range(CDCoreList, &cdcores);
  cores_to_range(VIDCoreList, &vidcores);
  cores_to_range(OSDCoreList, &osdcores);
  cores_to_range(SNDCoreList, &sndcores);
  cores_to_range(PERCoreList, &percores);

  dialog1 = gtk_dialog_new ();
  gtk_window_set_title (GTK_WINDOW (dialog1), "Yabause configuration");
  gtk_window_set_icon_name (GTK_WINDOW (dialog1), "gtk-preferences");
  gtk_window_set_type_hint (GTK_WINDOW (dialog1), GDK_WINDOW_TYPE_HINT_DIALOG);
  gtk_window_set_resizable(GTK_WINDOW(dialog1), FALSE);

  notebook1 = gtk_notebook_new ();
  gtk_widget_show(notebook1);

  gtk_box_pack_start(GTK_BOX(GTK_DIALOG(dialog1)->vbox), notebook1, TRUE, TRUE, 0);




  general = yui_page_new(keyfile);

  box = yui_page_add(YUI_PAGE(general), _("Bios"));
  gtk_container_add(GTK_CONTAINER(box), yui_file_entry_new(keyfile, "General", "BiosPath", YUI_FILE_ENTRY_BROWSE, ((void*)0)));

  box = yui_page_add(YUI_PAGE(general), _("Cdrom"));
  gtk_container_add(GTK_CONTAINER(box), yui_range_new(keyfile, "General", "CDROMCore", cdcores));
  gtk_container_add(GTK_CONTAINER(box), yui_file_entry_new(keyfile, "General", "CDROMDrive", YUI_FILE_ENTRY_BROWSE, ((void*)0)));

  box = yui_page_add(YUI_PAGE(general), _("Save States"));
  gtk_container_add(GTK_CONTAINER(box), yui_file_entry_new(keyfile, "General", "StatePath", YUI_FILE_ENTRY_BROWSE | YUI_FILE_ENTRY_DIRECTORY, ((void*)0)));

  gtk_notebook_append_page(GTK_NOTEBOOK(notebook1), general, gtk_label_new (_("General")));
  gtk_widget_show_all(general);




  video_sound = yui_page_new(keyfile);

  box = yui_page_add(YUI_PAGE(video_sound), _("Video Core"));
  gtk_container_add(GTK_CONTAINER(box), yui_range_new(keyfile, "General", "VideoCore", vidcores));

  box = yui_page_add(YUI_PAGE(video_sound), _("Bilinear Filtering"));
  {
    GtkWidget * bilinear = gtk_check_button_new_with_label("Enable Bilinear Filtering");
    gtk_toggle_button_set_active(GTK_TOGGLE_BUTTON(bilinear), g_key_file_get_integer(keyfile, "General", "Bilinear", ((void*)0)));
    gtk_container_set_border_width(GTK_CONTAINER(bilinear), 10);
    g_signal_connect(bilinear, "toggled", G_CALLBACK(bilinear_toggled), ((void*)0));
    gtk_container_add(GTK_CONTAINER(box), bilinear);
  }






  box = yui_page_add(YUI_PAGE(video_sound), _("Resolution"));
  gtk_container_add(GTK_CONTAINER(box), yui_resolution_new(keyfile, "General"));

  box = yui_page_add(YUI_PAGE(video_sound), _("Video Format"));
  gtk_container_add(GTK_CONTAINER(box), yui_range_new(keyfile, "General", "VideoFormat", vidformats));

  box = yui_page_add(YUI_PAGE(video_sound), _("Frame Skip/Limiter"));
  {
    GtkWidget * frameskip = gtk_check_button_new_with_label("Enable frame skipping/limiting");
    gtk_toggle_button_set_active(GTK_TOGGLE_BUTTON(frameskip), g_key_file_get_integer(keyfile, "General", "Frameskip", ((void*)0)));
    gtk_container_set_border_width(GTK_CONTAINER(frameskip), 10);
    g_signal_connect(frameskip, "toggled", G_CALLBACK(frameskip_toggled), ((void*)0));
    gtk_container_add(GTK_CONTAINER(box), frameskip);
  }

  gtk_notebook_append_page(GTK_NOTEBOOK(notebook1), video_sound, gtk_label_new (_("Video")));
  gtk_widget_show_all(video_sound);




  sound = yui_page_new(keyfile);

  box = yui_page_add(YUI_PAGE(sound), _("Sound Core"));
  gtk_container_add(GTK_CONTAINER(box), yui_range_new(keyfile, "General", "SoundCore", sndcores));

  {
    GtkWidget * volume;

    box = yui_page_add(YUI_PAGE(sound), _("Volume"));
    gtk_container_set_border_width(GTK_CONTAINER(box), 10);
    volume = gtk_hscale_new_with_range(0, 100, 1);
    gtk_range_set_value(GTK_RANGE(volume), g_key_file_get_integer(keyfile, "General", "Volume", ((void*)0)));
    g_signal_connect(volume, "value-changed", G_CALLBACK(volume_changed), ((void*)0));
    gtk_container_add(GTK_CONTAINER(box), volume);
  }

  gtk_notebook_append_page(GTK_NOTEBOOK(notebook1), sound, gtk_label_new (_("Sound")));
  gtk_widget_show_all(sound);




  cart_memory = yui_page_new(keyfile);

  box = yui_page_add(YUI_PAGE(cart_memory), _("Cartridge"));
  {
     GtkWidget * w1, * w2, * w3;

     w1 = yui_range_new(keyfile, "General", "CartType", carttypes);
     gtk_container_add(GTK_CONTAINER(box), w1);

     w2 = yui_file_entry_new(keyfile, "General", "CartPath", YUI_FILE_ENTRY_BROWSE, ((void*)0));
     gtk_container_add(GTK_CONTAINER(box), w2);

     w3 = gtk_hbox_new(FALSE, 0);
     gtk_box_pack_start(GTK_BOX(w3), yui_file_entry_new(keyfile, "General", "NetlinkHost", 0, "Host"), TRUE, TRUE, 0);
     gtk_box_pack_start(GTK_BOX(w3), yui_file_entry_new(keyfile, "General", "NetlinkPort", 0, "Port"), TRUE, TRUE, 0);
     gtk_container_add(GTK_CONTAINER(box), w3);

     g_signal_connect(w1, "changed", G_CALLBACK(hide_show_cart_path), w2);
     g_signal_connect(w1, "changed", G_CALLBACK(hide_show_netlink), w3);

     box = yui_page_add(YUI_PAGE(cart_memory), _("Memory"));
     gtk_container_add(GTK_CONTAINER(box), yui_file_entry_new(keyfile, "General", "BackupRamPath", YUI_FILE_ENTRY_BROWSE, ((void*)0)));

     box = yui_page_add(YUI_PAGE(cart_memory), _("Mpeg ROM"));
     gtk_container_add(GTK_CONTAINER(box), yui_file_entry_new(keyfile, "General", "MpegRomPath", YUI_FILE_ENTRY_BROWSE, ((void*)0)));

     gtk_notebook_append_page(GTK_NOTEBOOK(notebook1), cart_memory, gtk_label_new (_("Cart/Memory")));
     gtk_widget_show_all(cart_memory);

     if (yui_range_get_active(YUI_RANGE(w1)) == 8) gtk_widget_hide(w2);
     else gtk_widget_hide(w3);
  }




  vbox17 = gtk_vbox_new (FALSE, 0);

  hbox22 = gtk_hbox_new (FALSE, 0);

  {
    GtkWidget * controllerscroll;
    GtkTreeStore * controllerlist;
    GtkWidget * controllerlistview;
    GtkCellRenderer * controllerrenderer;
    GtkTreeViewColumn * controllercolumn;
    GtkTreeIter iter;
    GtkTreePath * path;

    controllerscroll = gtk_scrolled_window_new(((void*)0), ((void*)0));
    gtk_scrolled_window_set_policy(GTK_SCROLLED_WINDOW(controllerscroll), GTK_POLICY_NEVER, GTK_POLICY_AUTOMATIC);

    controllerlist = gtk_tree_store_new(1, G_TYPE_STRING);
    controllerlistview = gtk_tree_view_new_with_model(GTK_TREE_MODEL(controllerlist));
    gtk_tree_view_set_headers_visible(GTK_TREE_VIEW(controllerlistview), FALSE);

    controllerrenderer = gtk_cell_renderer_text_new();
    controllercolumn = gtk_tree_view_column_new_with_attributes("Controller", controllerrenderer, "text", 0, ((void*)0));
    gtk_tree_view_append_column(GTK_TREE_VIEW (controllerlistview), controllercolumn);

    gtk_tree_store_append(controllerlist, &iter, ((void*)0));
    gtk_tree_store_set(controllerlist, &iter, 0, "Pad", -1);

    gtk_tree_store_append(controllerlist, &iter, ((void*)0));
    gtk_tree_store_set(controllerlist, &iter, 0, "Mouse", -1);

    gtk_container_add(GTK_CONTAINER(controllerscroll), controllerlistview);
    gtk_box_pack_start (GTK_BOX (hbox22), controllerscroll, TRUE, TRUE, 0);

    gtk_tree_view_expand_all(GTK_TREE_VIEW(controllerlistview));

    g_signal_connect(controllerlistview, "cursor-changed", G_CALLBACK(pertype_changed), hbox22);
    perid = g_key_file_get_integer(keyfile, "General", "PerType", ((void*)0));
    switch(perid)
    {
       case 129:
          path = gtk_tree_path_new_from_string("1");
          break;
       case 128:
       default:
          path = gtk_tree_path_new_from_string("0");
          break;
    }

    gtk_tree_view_set_cursor(GTK_TREE_VIEW(controllerlistview), path, ((void*)0), FALSE);
    gtk_tree_path_free(path);
  }

  gtk_box_pack_start (GTK_BOX (vbox17), hbox22, TRUE, TRUE, 0);



  gtk_notebook_append_page(GTK_NOTEBOOK(notebook1), vbox17, gtk_label_new (_("Input")));
  gtk_widget_show_all(vbox17);





  advanced = yui_page_new(keyfile);

  box = yui_page_add(YUI_PAGE(advanced), _("Region"));
  gtk_container_add(GTK_CONTAINER(box), yui_range_new(keyfile, "General", "Region", regions));

  box = yui_page_add(YUI_PAGE(advanced), _("SH2 Interpreter"));
  gtk_container_add(GTK_CONTAINER(box), yui_range_new(keyfile, "General", "SH2Int", sh2interpreters));

  box = yui_page_add(YUI_PAGE(advanced), _("M68k Interpreter"));
  gtk_container_add(GTK_CONTAINER(box), yui_range_new(keyfile, "General", "M68kInt", m68kinterpreters));

  box = yui_page_add(YUI_PAGE(advanced), _("Audio Sync"));
  {
    GtkWidget *button = yui_check_button_new(
        _("Synchronize audio output with emulation"),
        keyfile, "General", "AudioSync"
    );
    gtk_container_add(GTK_CONTAINER(box), button);
    g_signal_connect(button, "changed",
                     G_CALLBACK(disable_enable_audio_sync), ((void*)0));
  }

  box = yui_page_add(YUI_PAGE(advanced), _("Clock Sync"));
  {
    GtkWidget *button1, *button2;

    button1 = yui_check_button_new(
        _("Synchronize internal clock with emulation"),
        keyfile, "General", "ClockSync"
    );
    gtk_container_add(GTK_CONTAINER(box), button1);

    button2 = yui_check_button_new(
        _("Always start from 1998-01-01 12:00"),
        keyfile, "General", "FixedBaseTime"
    );
    gtk_container_add(GTK_CONTAINER(box), button2);
    if (!yui_check_button_get_active(YUI_CHECK_BUTTON(button1)))
      gtk_widget_set_sensitive(button2, FALSE);

    g_signal_connect(button1, "changed",
                     G_CALLBACK(disable_enable_fixed_base_time), button2);
  }

  box = yui_page_add(YUI_PAGE(advanced), _("Threads"));
  {
    GtkWidget *button = yui_check_button_new(
        _("Use multithreaded emulation (EXPERIMENTAL!)"),
        keyfile, "General", "UseThreads"
    );
    gtk_container_add(GTK_CONTAINER(box), button);
  }






  gtk_notebook_append_page(GTK_NOTEBOOK(notebook1), advanced, gtk_label_new (_("Advanced")));
  gtk_widget_show_all(advanced);




  button11 = gtk_button_new_from_stock ("gtk-cancel");

  gtk_dialog_add_action_widget (GTK_DIALOG (dialog1), button11, GTK_RESPONSE_CANCEL);
  GTK_WIDGET_SET_FLAGS (button11, GTK_CAN_DEFAULT);
  gtk_widget_show(button11);

  button12 = gtk_button_new_from_stock ("gtk-ok");

  gtk_dialog_add_action_widget (GTK_DIALOG (dialog1), button12, GTK_RESPONSE_OK);
  GTK_WIDGET_SET_FLAGS (button12, GTK_CAN_DEFAULT);
  gtk_widget_show(button12);

  gtk_widget_show(dialog1);

  return dialog1;
}
