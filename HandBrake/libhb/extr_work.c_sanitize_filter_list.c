
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int selective ;
typedef int hb_list_t ;
struct TYPE_7__ {int width; int height; } ;
typedef TYPE_1__ hb_geometry_t ;
struct TYPE_8__ {int * settings; } ;
typedef TYPE_2__ hb_filter_object_t ;
typedef int hb_dict_t ;


 int HB_FILTER_COMB_DETECT ;
 int HB_FILTER_CROP_SCALE ;
 int HB_FILTER_DECOMB ;
 int HB_FILTER_DEINTERLACE ;
 int HB_FILTER_DETELECINE ;
 int HB_FILTER_VFR ;
 int MODE_DECOMB_SELECTIVE ;
 int hb_dict_get_int (int *,char*) ;
 int hb_dict_set (int *,char*,int ) ;
 int hb_filter_close (TYPE_2__**) ;
 TYPE_2__* hb_filter_find (int *,int) ;
 int hb_list_rem (int *,TYPE_2__*) ;
 int hb_log (char*) ;
 int hb_value_int (int) ;

__attribute__((used)) static void sanitize_filter_list(hb_list_t *list, hb_geometry_t src_geo)
{

    if (hb_filter_find(list, HB_FILTER_COMB_DETECT) != ((void*)0))
    {
        int selective[] = {HB_FILTER_DECOMB, HB_FILTER_DEINTERLACE};
        int ii, count = sizeof(selective) / sizeof(int);

        for (ii = 0; ii < count; ii++)
        {
            hb_filter_object_t * filter = hb_filter_find(list, selective[ii]);
            if (filter != ((void*)0))
            {
                int mode = hb_dict_get_int(filter->settings, "mode");
                mode |= MODE_DECOMB_SELECTIVE;
                hb_dict_set(filter->settings, "mode", hb_value_int(mode));
                break;
            }
        }
    }

    int is_detel = 0;
    hb_filter_object_t * filter = hb_filter_find(list, HB_FILTER_DETELECINE);
    if (filter != ((void*)0))
    {
        is_detel = 1;
    }

    filter = hb_filter_find(list, HB_FILTER_VFR);
    if (filter != ((void*)0))
    {
        int mode = hb_dict_get_int(filter->settings, "mode");

        if ( (mode == 0) && (is_detel == 0) )
        {
            hb_list_rem(list, filter);
            hb_filter_close(&filter);
            hb_log("Skipping vfr filter");
        }
    }

    filter = hb_filter_find(list, HB_FILTER_CROP_SCALE);
    if (filter != ((void*)0))
    {
        hb_dict_t* settings = filter->settings;
        if (settings != ((void*)0))
        {
            int width, height, top, bottom, left, right;
            width = hb_dict_get_int(settings, "width");
            height = hb_dict_get_int(settings, "height");
            top = hb_dict_get_int(settings, "crop-top");
            bottom = hb_dict_get_int(settings, "crop-bottom");
            left = hb_dict_get_int(settings, "crop-left");
            right = hb_dict_get_int(settings, "crop-right");

            if ( (src_geo.width == width) && (src_geo.height == height) &&
                (top == 0) && (bottom == 0 ) && (left == 0) && (right == 0) )
            {
                hb_list_rem(list, filter);
                hb_filter_close(&filter);
                hb_log("Skipping crop/scale filter");
            }
        }
    }
}
