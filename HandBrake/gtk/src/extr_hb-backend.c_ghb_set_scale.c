
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ scale_busy; int settings; int builder; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef int gint ;
typedef scalar_t__ gboolean ;
typedef int GtkWidget ;


 scalar_t__ FALSE ;
 int * GHB_WIDGET (int ,char*) ;
 int GTK_SPIN_BUTTON (int *) ;
 scalar_t__ TRUE ;
 scalar_t__ ghb_dict_get_bool (int ,char*) ;
 int ghb_picture_settings_deps (TYPE_1__*) ;
 int ghb_set_scale_settings (int ,int ) ;
 int ghb_settings_combo_int (int ,char*) ;
 int ghb_ui_update_from_settings (TYPE_1__*,char*,int ) ;
 int ghb_update_display_aspect_label (TYPE_1__*) ;
 int ghb_update_summary_info (TYPE_1__*) ;
 int gtk_spin_button_set_increments (int ,int,int) ;

void
ghb_set_scale(signal_user_data_t *ud, gint mode)
{
    if (ud->scale_busy) return;
    ud->scale_busy = TRUE;

    ghb_set_scale_settings(ud->settings, mode);
    ghb_update_summary_info(ud);
    ghb_picture_settings_deps(ud);



    GtkWidget *widget;
    int mod = ghb_settings_combo_int(ud->settings, "PictureModulus");
    widget = GHB_WIDGET (ud->builder, "scale_width");
    gtk_spin_button_set_increments (GTK_SPIN_BUTTON(widget), mod, 16);
    widget = GHB_WIDGET (ud->builder, "scale_height");
    gtk_spin_button_set_increments (GTK_SPIN_BUTTON(widget), mod, 16);



    gboolean loosecrop = ghb_dict_get_bool(ud->settings, "PictureLooseCrop");
    if (loosecrop)
    {
        widget = GHB_WIDGET (ud->builder, "PictureTopCrop");
        gtk_spin_button_set_increments (GTK_SPIN_BUTTON(widget), mod, 16);
        widget = GHB_WIDGET (ud->builder, "PictureBottomCrop");
        gtk_spin_button_set_increments (GTK_SPIN_BUTTON(widget), mod, 16);
        widget = GHB_WIDGET (ud->builder, "PictureLeftCrop");
        gtk_spin_button_set_increments (GTK_SPIN_BUTTON(widget), mod, 16);
        widget = GHB_WIDGET (ud->builder, "PictureRightCrop");
        gtk_spin_button_set_increments (GTK_SPIN_BUTTON(widget), mod, 16);
    }
    else
    {
        widget = GHB_WIDGET (ud->builder, "PictureTopCrop");
        gtk_spin_button_set_increments (GTK_SPIN_BUTTON(widget), 2, 16);
        widget = GHB_WIDGET (ud->builder, "PictureBottomCrop");
        gtk_spin_button_set_increments (GTK_SPIN_BUTTON(widget), 2, 16);
        widget = GHB_WIDGET (ud->builder, "PictureLeftCrop");
        gtk_spin_button_set_increments (GTK_SPIN_BUTTON(widget), 2, 16);
        widget = GHB_WIDGET (ud->builder, "PictureRightCrop");
        gtk_spin_button_set_increments (GTK_SPIN_BUTTON(widget), 2, 16);
    }

    ghb_ui_update_from_settings(ud, "autoscale", ud->settings);
    ghb_ui_update_from_settings(ud, "PictureModulus", ud->settings);
    ghb_ui_update_from_settings(ud, "PictureLooseCrop", ud->settings);
    ghb_ui_update_from_settings(ud, "PictureKeepRatio", ud->settings);

    ghb_ui_update_from_settings(ud, "PictureTopCrop", ud->settings);
    ghb_ui_update_from_settings(ud, "PictureBottomCrop", ud->settings);
    ghb_ui_update_from_settings(ud, "PictureLeftCrop", ud->settings);
    ghb_ui_update_from_settings(ud, "PictureRightCrop", ud->settings);

    ghb_ui_update_from_settings(ud, "scale_width", ud->settings);
    ghb_ui_update_from_settings(ud, "scale_height", ud->settings);

    ghb_ui_update_from_settings(ud, "PicturePARWidth", ud->settings);
    ghb_ui_update_from_settings(ud, "PicturePARHeight", ud->settings);
    ghb_ui_update_from_settings(ud, "PictureDisplayWidth", ud->settings);
    ghb_ui_update_from_settings(ud, "PictureDisplayHeight", ud->settings);
    ghb_update_display_aspect_label(ud);
    ud->scale_busy = FALSE;
}
