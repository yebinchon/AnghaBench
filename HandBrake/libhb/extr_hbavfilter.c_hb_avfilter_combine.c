
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct hb_filter_private_s {int dummy; } ;
typedef int hb_value_t ;
typedef int hb_list_t ;
struct TYPE_7__ {int input; int * avfilters; } ;
typedef TYPE_1__ hb_filter_private_t ;
struct TYPE_8__ {int id; int aliased; int settings; TYPE_1__* private_data; } ;
typedef TYPE_2__ hb_filter_object_t ;
 TYPE_1__* calloc (int,int) ;
 TYPE_2__* hb_filter_init (int const) ;
 int hb_list_count (int *) ;
 int hb_list_insert (int *,int,TYPE_2__*) ;
 TYPE_2__* hb_list_item (int *,int) ;
 int hb_value_array_concat (int ,int *) ;
 int hb_value_array_init () ;

void hb_avfilter_combine( hb_list_t * list)
{
    hb_filter_object_t * avfilter = ((void*)0);
    hb_value_t * settings = ((void*)0);
    int ii;

    for (ii = 0; ii < hb_list_count(list); ii++)
    {
        hb_filter_object_t * filter = hb_list_item(list, ii);
        hb_filter_private_t * pv = filter->private_data;
        switch (filter->id)
        {
            case 133:
            case 130:
            case 131:
            case 132:
            case 129:
            case 128:
            {
                settings = pv->avfilters;
            } break;
            default:
            {
                settings = ((void*)0);
                avfilter = ((void*)0);
            } break;
        }
        if (settings != ((void*)0))
        {
            if (avfilter == ((void*)0))
            {
                hb_filter_private_t * avpv = ((void*)0);
                avfilter = hb_filter_init(133);
                avfilter->aliased = 1;

                avpv = calloc(1, sizeof(struct hb_filter_private_s));
                avfilter->private_data = avpv;
                avpv->input = pv->input;

                avfilter->settings = hb_value_array_init();
                hb_list_insert(list, ii, avfilter);
                ii++;
            }

            hb_value_array_concat(avfilter->settings, settings);
        }
    }
}
