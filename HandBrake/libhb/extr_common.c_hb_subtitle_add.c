
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int list_subtitle; } ;
typedef TYPE_1__ hb_title_t ;
struct TYPE_11__ {scalar_t__* name; int * src_filename; } ;
struct TYPE_10__ {int track; scalar_t__ out_track; TYPE_3__ config; } ;
typedef TYPE_2__ hb_subtitle_t ;
typedef TYPE_3__ hb_subtitle_config_t ;
struct TYPE_12__ {int list_subtitle; TYPE_1__* title; } ;
typedef TYPE_4__ hb_job_t ;


 int hb_list_add (int ,TYPE_2__*) ;
 scalar_t__ hb_list_count (int ) ;
 int hb_list_item (int ,int) ;
 TYPE_2__* hb_subtitle_copy (int ) ;
 scalar_t__* strdup (scalar_t__*) ;

int hb_subtitle_add(const hb_job_t * job, const hb_subtitle_config_t * subtitlecfg, int track)
{
    hb_title_t *title = job->title;
    hb_subtitle_t *subtitle;

    subtitle = hb_subtitle_copy( hb_list_item( title->list_subtitle, track ) );
    if( subtitle == ((void*)0) )
    {

        return 0;
    }



    subtitle->track = track;
    subtitle->config = *subtitlecfg;
    if (subtitlecfg->name != ((void*)0) && subtitlecfg->name[0] != 0)
    {
        subtitle->config.name = strdup(subtitlecfg->name);
    }
    else
    {
        subtitle->config.name = ((void*)0);
    }
    subtitle->config.src_filename = ((void*)0);
    subtitle->out_track = hb_list_count(job->list_subtitle) + 1;
    hb_list_add(job->list_subtitle, subtitle);
    return 1;
}
