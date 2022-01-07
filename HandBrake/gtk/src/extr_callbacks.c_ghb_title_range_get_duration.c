
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int den; int num; } ;
struct TYPE_6__ {TYPE_1__ vrate; } ;
typedef TYPE_2__ hb_title_t ;
typedef int gint64 ;
typedef int GhbValue ;


 int ghb_chapter_range_get_duration (TYPE_2__ const*,int,int) ;
 int ghb_dict_get_int (int *,char*) ;
 int ghb_settings_combo_int (int *,char*) ;

gint64
ghb_title_range_get_duration(GhbValue * settings, const hb_title_t * title)
{
    gint64 start, end;

    if (ghb_settings_combo_int(settings, "PtoPType") == 0)
    {
        start = ghb_dict_get_int(settings, "start_point");
        end = ghb_dict_get_int(settings, "end_point");
        return ghb_chapter_range_get_duration(title, start, end) / 90000;
    }
    else if (ghb_settings_combo_int(settings, "PtoPType") == 1)
    {
        start = ghb_dict_get_int(settings, "start_point");
        end = ghb_dict_get_int(settings, "end_point");
        return end - start;
    }
    else if (ghb_settings_combo_int(settings, "PtoPType") == 2)
    {
        if (title != ((void*)0))
        {
            gint64 frames;

            start = ghb_dict_get_int(settings, "start_point");
            end = ghb_dict_get_int(settings, "end_point");
            frames = end - start + 1;
            return frames * title->vrate.den / title->vrate.num;
        }
        else
        {
            return 0;
        }
    }
    return 0;
}
