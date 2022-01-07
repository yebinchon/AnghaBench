
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int settings; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef int gchar ;
struct TYPE_7__ {int filter_id; int preset; } ;
typedef TYPE_2__ filter_opts_t ;


 int filter_opts_set2 (TYPE_1__*,int const*,int ,int ) ;
 int ghb_set_custom_filter_tooltip (TYPE_1__*,char*,char*,int ) ;
 int ghb_settings_combo_int (int ,char*) ;

__attribute__((used)) static void
sharpen_opts_set(signal_user_data_t *ud, const gchar *name,
               void *vopts, const void* data)
{
    (void)data;

    filter_opts_t *opts = (filter_opts_t*)vopts;
    opts->filter_id = ghb_settings_combo_int(ud->settings,
                                             "PictureSharpenFilter");
    filter_opts_set2(ud, name, opts->filter_id, opts->preset);

    ghb_set_custom_filter_tooltip(ud, "PictureSharpenCustom",
                                  "sharpen", opts->filter_id);
}
