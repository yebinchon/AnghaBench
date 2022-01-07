
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


 TYPE_1__* calloc (int,int) ;
 int hb_dict_extract_string (char**,int *,char*) ;
 int * hb_dict_init () ;
 int hb_dict_set (int *,char*,int *) ;
 int hb_dict_set_string (int *,char*,char*) ;

__attribute__((used)) static int colorspace_init(hb_filter_object_t * filter, hb_filter_init_t * init)
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

    char * format = ((void*)0), * range = ((void*)0);
    char * primaries = ((void*)0), * transfer = ((void*)0), * matrix = ((void*)0);

    hb_dict_extract_string(&format, settings, "format");
    hb_dict_extract_string(&range, settings, "range");
    hb_dict_extract_string(&primaries, settings, "primaries");
    hb_dict_extract_string(&transfer, settings, "transfer");
    hb_dict_extract_string(&matrix, settings, "matrix");

    if (!(format || range || primaries || transfer || matrix))
    {
        return 0;
    }

    hb_dict_t * avfilter = hb_dict_init();
    hb_dict_t * avsettings = hb_dict_init();

    if (format)
    {
        hb_dict_set_string(avsettings, "format", format);
    }
    if (range)
    {
        hb_dict_set_string(avsettings, "range", range);
    }
    if (primaries)
    {
        hb_dict_set_string(avsettings, "primaries", primaries);
    }
    if (transfer)
    {
        hb_dict_set_string(avsettings, "trc", transfer);
    }
    if (matrix)
    {
        hb_dict_set_string(avsettings, "space", matrix);
    }
    hb_dict_set(avfilter, "colorspace", avsettings);
    pv->avfilters = avfilter;

    pv->output = *init;

    return 0;
}
