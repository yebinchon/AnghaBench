
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct hb_filter_private_s {int dummy; } ;
struct TYPE_5__ {void* output; int * avfilters; void* input; } ;
typedef TYPE_1__ hb_filter_private_t ;
struct TYPE_6__ {int * settings; TYPE_1__* private_data; } ;
typedef TYPE_2__ hb_filter_object_t ;
typedef void* hb_filter_init_t ;
typedef int hb_dict_t ;


 int MODE_DECOMB_SELECTIVE ;
 int MODE_YADIF_BOB ;
 int MODE_YADIF_ENABLE ;
 int MODE_YADIF_SPATIAL ;
 TYPE_1__* calloc (int,int) ;
 int hb_dict_extract_int (int*,int *,char*) ;
 int * hb_dict_init () ;
 int hb_dict_set (int *,char*,int *) ;
 int * hb_value_string (char*) ;

__attribute__((used)) static int deinterlace_init(hb_filter_object_t * filter,
                            hb_filter_init_t * init)
{
    hb_filter_private_t * pv = ((void*)0);

    pv = calloc(1, sizeof(struct hb_filter_private_s));
    filter->private_data = pv;
    if (pv == ((void*)0))
    {
        return 1;
    }
    pv->input = *init;

    hb_dict_t * settings = filter->settings;

    int mode = 3, parity = -1;

    hb_dict_extract_int(&mode, settings, "mode");
    hb_dict_extract_int(&parity, settings, "parity");

    if (!(mode & MODE_YADIF_ENABLE))
    {
        return 0;
    }

    hb_dict_t * avfilter = hb_dict_init();
    hb_dict_t * avsettings = hb_dict_init();

    if (mode & MODE_YADIF_BOB)
    {
        if (mode & MODE_YADIF_SPATIAL)
        {
            hb_dict_set(avsettings, "mode", hb_value_string("send_field"));
        }
        else
        {
            hb_dict_set(avsettings, "mode",
                        hb_value_string("send_field_nospatial"));
        }
    }
    else
    {
        if (mode & MODE_YADIF_SPATIAL)
        {
            hb_dict_set(avsettings, "mode", hb_value_string("send_frame"));
        }
        else
        {
            hb_dict_set(avsettings, "mode",
                        hb_value_string("send_frame_nospatial"));
        }
    }

    if (mode & MODE_DECOMB_SELECTIVE)
    {
        hb_dict_set(avsettings, "deint", hb_value_string("interlaced"));
    }
    if (parity == 0)
    {
        hb_dict_set(avsettings, "parity", hb_value_string("tff"));
    }
    else if (parity == 1)
    {
        hb_dict_set(avsettings, "parity", hb_value_string("bff"));
    }
    hb_dict_set(avfilter, "yadif", avsettings);
    pv->avfilters = avfilter;

    pv->output = *init;

    return 0;
}
