
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int settings_array; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef scalar_t__ gint ;
typedef int GhbValue ;


 int * ghb_array_get (int ,scalar_t__) ;
 scalar_t__ ghb_array_len (int ) ;
 scalar_t__ ghb_dict_get_bool (int *,char*) ;
 int ghb_queue_selection_init (TYPE_1__*) ;
 int queue_add (TYPE_1__*,int *,int) ;

__attribute__((used)) static void
add_multiple_titles(signal_user_data_t *ud)
{
    gint count, ii;

    count = ghb_array_len(ud->settings_array);
    for (ii = 0; ii < count; ii++)
    {
        GhbValue *settings;

        settings = ghb_array_get(ud->settings_array, ii);
        if (ghb_dict_get_bool(settings, "title_selected"))
        {
            queue_add(ud, settings, 1);
        }
    }
    ghb_queue_selection_init(ud);
}
