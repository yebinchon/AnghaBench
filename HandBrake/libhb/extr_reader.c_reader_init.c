
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_12__ ;


typedef int int64_t ;
struct TYPE_14__ {void* last_scr; } ;
struct TYPE_17__ {int chapter_end; int start_found; scalar_t__ duration; int splice_list_size; void* fifos; TYPE_3__* splice_list; TYPE_12__* title; int pts_to_start; void* last_pts; TYPE_1__ demux; int die; TYPE_7__* job; int h; } ;
typedef TYPE_4__ hb_work_private_t ;
struct TYPE_18__ {TYPE_4__* private_data; } ;
typedef TYPE_5__ hb_work_object_t ;
struct TYPE_19__ {int id; } ;
typedef TYPE_6__ hb_subtitle_t ;
struct TYPE_20__ {int chapter_end; scalar_t__ pts_to_start; scalar_t__ pts_to_stop; int frame_to_stop; int frame_to_start; int list_audio; int list_subtitle; TYPE_12__* title; int die; int h; } ;
typedef TYPE_7__ hb_job_t ;
typedef int hb_fifo_t ;
struct TYPE_21__ {int id; } ;
typedef TYPE_8__ hb_audio_t ;
typedef int buffer_splice_list_t ;
struct TYPE_16__ {int id; } ;
struct TYPE_15__ {int den; int num; } ;
struct TYPE_13__ {int duration; int video_id; int list_chapter; TYPE_2__ vrate; } ;


 void* AV_NOPTS_VALUE ;
 int MAX (int ,scalar_t__) ;
 void* calloc (int,int) ;
 int chapter_end_pts (TYPE_12__*,int) ;
 int hb_list_count (int ) ;
 void* hb_list_item (int ,int) ;
 scalar_t__ hb_reader_open (TYPE_4__*) ;

__attribute__((used)) static int reader_init( hb_work_object_t * w, hb_job_t * job )
{
    hb_work_private_t * r;

    r = calloc( sizeof( hb_work_private_t ), 1 );
    w->private_data = r;

    r->h = job->h;
    r->job = job;
    r->title = job->title;
    r->die = job->die;

    r->demux.last_scr = AV_NOPTS_VALUE;
    r->last_pts = AV_NOPTS_VALUE;

    r->chapter_end = job->chapter_end;
    if (!job->pts_to_start)
    {
        r->start_found = 1;
    }
    else
    {




        r->pts_to_start = MAX(0, job->pts_to_start - 1000000);
    }

    if (job->pts_to_stop > 0)
    {
        r->duration = job->pts_to_start + job->pts_to_stop;
    }
    else if (job->frame_to_stop)
    {
        int frames = job->frame_to_start + job->frame_to_stop;
        r->duration = (int64_t)frames * job->title->vrate.den * 90000 /
                                        job->title->vrate.num;
    }
    else
    {
        int count = hb_list_count(job->title->list_chapter);
        if (count == 0 || count <= job->chapter_end)
        {
            r->duration = job->title->duration;
        }
        else
        {
            r->duration = chapter_end_pts(job->title, job->chapter_end);
        }
    }



    int count = 1;
    count += hb_list_count( job->list_subtitle );
    count += hb_list_count( job->list_audio );
    r->splice_list_size = count;
    r->splice_list = calloc(count, sizeof(buffer_splice_list_t));


    int ii, jj = 0;
    r->splice_list[jj++].id = r->title->video_id;
    for (ii = 0; ii < hb_list_count(job->list_subtitle); ii++)
    {
        hb_subtitle_t * subtitle = hb_list_item(job->list_subtitle, ii);
        r->splice_list[jj++].id = subtitle->id;
    }
    for (ii = 0; ii < hb_list_count(job->list_audio); ii++)
    {
        hb_audio_t * audio = hb_list_item(job->list_audio, ii);
        r->splice_list[jj++].id = audio->id;
    }



    r->fifos = calloc(count + 1, sizeof(hb_fifo_t*));




    if ( hb_reader_open( r ) )
    {
        return 1;
    }
    return 0;
}
