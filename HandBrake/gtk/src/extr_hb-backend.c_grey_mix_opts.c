
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int builder; } ;
typedef TYPE_1__ signal_user_data_t ;
struct TYPE_7__ {int amixdown; } ;
typedef TYPE_2__ hb_mixdown_t ;
typedef int gint64 ;
typedef int gint ;


 int g_debug (char*) ;
 int grey_builder_combo_box_item (int ,char*,int ,int) ;
 TYPE_2__* hb_mixdown_get_next (TYPE_2__ const*) ;
 int hb_mixdown_is_supported (int ,int ,int ) ;

__attribute__((used)) static void
grey_mix_opts(signal_user_data_t *ud, gint acodec, gint64 layout)
{
    g_debug("grey_mix_opts()\n");

    const hb_mixdown_t *mix;
    for (mix = hb_mixdown_get_next(((void*)0)); mix != ((void*)0);
         mix = hb_mixdown_get_next(mix))
    {
        grey_builder_combo_box_item(ud->builder, "AudioMixdown", mix->amixdown,
                !hb_mixdown_is_supported(mix->amixdown, acodec, layout));
    }
}
