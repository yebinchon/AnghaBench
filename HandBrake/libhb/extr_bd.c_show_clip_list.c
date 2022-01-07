
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_5__ {int out_time; int in_time; int clip_id; } ;
struct TYPE_4__ {int clip_count; TYPE_2__* clips; } ;
typedef TYPE_1__ BLURAY_TITLE_INFO ;
typedef TYPE_2__ BLURAY_CLIP_INFO ;


 int hb_log (char*,int ,int,int,int) ;

__attribute__((used)) static void show_clip_list( BLURAY_TITLE_INFO * ti )
{
    int ii;

    for (ii = 0; ii < ti->clip_count; ii++)
    {
        BLURAY_CLIP_INFO * ci = &ti->clips[ii];
        int64_t duration = ci->out_time - ci->in_time;
        int hh, mm, ss;

        hh = duration / (90000 * 60 * 60);
        mm = (duration / (90000 * 60)) % 60;
        ss = (duration / 90000) % 60;
        hb_log("bd:\t\t%s.M2TS -- Duration: %02d:%02d:%02d",
               ti->clips[ii].clip_id, hh, mm, ss);
    }
}
