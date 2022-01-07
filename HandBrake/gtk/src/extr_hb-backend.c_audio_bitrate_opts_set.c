
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int builder; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef int gchar ;
typedef int GtkComboBox ;


 int GHB_WIDGET (int ,int const*) ;
 int * GTK_COMBO_BOX (int ) ;
 int ghb_audio_bitrate_opts_set (int *) ;

__attribute__((used)) static void
audio_bitrate_opts_set(signal_user_data_t *ud, const gchar *name,
                       void *opts, const void* data)
{
    (void)opts;
    (void)data;

    GtkComboBox *combo = GTK_COMBO_BOX(GHB_WIDGET(ud->builder, name));
    ghb_audio_bitrate_opts_set(combo);
}
