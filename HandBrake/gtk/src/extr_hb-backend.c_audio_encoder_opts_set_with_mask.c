
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gchar ;
typedef int GtkComboBox ;
typedef int GtkBuilder ;


 int GHB_WIDGET (int *,int const*) ;
 int * GTK_COMBO_BOX (int ) ;
 int ghb_audio_encoder_opts_set_with_mask (int *,int,int) ;

__attribute__((used)) static void
audio_encoder_opts_set_with_mask(
    GtkBuilder *builder,
    const gchar *name,
    int mask,
    int neg_mask)
{
    GtkComboBox *combo = GTK_COMBO_BOX(GHB_WIDGET(builder, name));
    ghb_audio_encoder_opts_set_with_mask(combo, mask, neg_mask);
}
