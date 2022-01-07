
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int hb_value_array_t ;
struct TYPE_5__ {int list_subtitle; } ;
typedef TYPE_1__ hb_title_t ;
struct TYPE_6__ {int source; } ;
typedef TYPE_2__ hb_subtitle_t ;
typedef int hb_dict_t ;


 int fprintf (int ,char*,int) ;
 int * hb_dict_init () ;
 int hb_dict_set (int *,char*,int ) ;
 TYPE_2__* hb_list_item (int ,int) ;
 scalar_t__ hb_subtitle_can_burn (int ) ;
 int hb_subtitle_can_pass (int ,int ) ;
 int hb_value_array_append (int *,int *) ;
 int hb_value_bool (int) ;
 int hb_value_int (int) ;
 int mux ;
 int stderr ;
 int subburn ;
 int subdefault ;
 int subforce ;
 int test_sub_list (int ,int) ;

__attribute__((used)) static int add_sub(hb_value_array_t *list, hb_title_t *title, int track, int out_track, int *one_burned)
{
    hb_subtitle_t *subtitle;

    subtitle = hb_list_item(title->list_subtitle, track);
    if (subtitle == ((void*)0))
    {
        fprintf(stderr, "Warning: Could not find subtitle track %d, skipped\n",
                track + 1);
        return -1;
    }

    int burn = !*one_burned && subburn == out_track &&
               hb_subtitle_can_burn(subtitle->source);
    *one_burned |= burn;
    int def = subdefault == out_track;
    int force = test_sub_list(subforce, out_track);

    if (!burn &&
        !hb_subtitle_can_pass(subtitle->source, mux))
    {

        if (*one_burned)
        {
            fprintf(stderr, "Warning: Skipping subtitle track %d, can't have more than one track burnt in\n", track + 1);
            return -1;
        }
        *one_burned = 1;
    }
    hb_dict_t *subtitle_dict = hb_dict_init();
    hb_dict_set(subtitle_dict, "Track", hb_value_int(track));
    hb_dict_set(subtitle_dict, "Default", hb_value_bool(def));
    hb_dict_set(subtitle_dict, "Forced", hb_value_bool(force));
    hb_dict_set(subtitle_dict, "Burn", hb_value_bool(burn));
    hb_value_array_append(list, subtitle_dict);
    return 0;
}
