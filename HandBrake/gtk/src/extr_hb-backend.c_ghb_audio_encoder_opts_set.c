
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GtkComboBox ;


 int HB_ACODEC_NONE ;
 int ghb_audio_encoder_opts_add_autopass (int *) ;
 int ghb_audio_encoder_opts_set_with_mask (int *,int ,int ) ;

void
ghb_audio_encoder_opts_set(GtkComboBox *combo)
{
    ghb_audio_encoder_opts_set_with_mask(combo, ~0, HB_ACODEC_NONE);
    ghb_audio_encoder_opts_add_autopass(combo);
}
