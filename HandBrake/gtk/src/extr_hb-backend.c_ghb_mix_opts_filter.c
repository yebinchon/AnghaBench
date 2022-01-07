
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int amixdown; } ;
typedef TYPE_1__ hb_mixdown_t ;
typedef int gint ;
typedef int GtkComboBox ;


 int g_debug (char*) ;
 int grey_combo_box_item (int *,int ,int) ;
 TYPE_1__* hb_mixdown_get_next (TYPE_1__ const*) ;
 int hb_mixdown_has_codec_support (int ,int ) ;

void
ghb_mix_opts_filter(GtkComboBox *combo, gint acodec)
{
    g_debug("ghb_mix_opts_filter()\n");

    const hb_mixdown_t *mix;
    for (mix = hb_mixdown_get_next(((void*)0)); mix != ((void*)0);
         mix = hb_mixdown_get_next(mix))
    {
        grey_combo_box_item(combo, mix->amixdown,
                !hb_mixdown_has_codec_support(mix->amixdown, acodec));
    }
}
