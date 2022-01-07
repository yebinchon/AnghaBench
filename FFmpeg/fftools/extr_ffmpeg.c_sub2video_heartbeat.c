
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_17__ {int nb_streams; int ist_index; } ;
struct TYPE_14__ {scalar_t__ last_pts; scalar_t__ end_pts; TYPE_2__* frame; } ;
struct TYPE_16__ {size_t file_index; int nb_filters; TYPE_4__** filters; TYPE_3__ sub2video; TYPE_1__* st; } ;
struct TYPE_15__ {int filter; } ;
struct TYPE_13__ {int * data; } ;
struct TYPE_12__ {int time_base; } ;
typedef TYPE_5__ InputStream ;
typedef TYPE_6__ InputFile ;


 scalar_t__ INT64_MAX ;
 scalar_t__ av_buffersrc_get_nb_failed_requests (int ) ;
 scalar_t__ av_rescale_q (scalar_t__,int ,int ) ;
 TYPE_6__** input_files ;
 TYPE_5__** input_streams ;
 int sub2video_push_ref (TYPE_5__*,scalar_t__) ;
 int sub2video_update (TYPE_5__*,int *) ;

__attribute__((used)) static void sub2video_heartbeat(InputStream *ist, int64_t pts)
{
    InputFile *infile = input_files[ist->file_index];
    int i, j, nb_reqs;
    int64_t pts2;





    for (i = 0; i < infile->nb_streams; i++) {
        InputStream *ist2 = input_streams[infile->ist_index + i];
        if (!ist2->sub2video.frame)
            continue;


        pts2 = av_rescale_q(pts, ist->st->time_base, ist2->st->time_base) - 1;

        if (pts2 <= ist2->sub2video.last_pts)
            continue;
        if (pts2 >= ist2->sub2video.end_pts ||
            (!ist2->sub2video.frame->data[0] && ist2->sub2video.end_pts < INT64_MAX))
            sub2video_update(ist2, ((void*)0));
        for (j = 0, nb_reqs = 0; j < ist2->nb_filters; j++)
            nb_reqs += av_buffersrc_get_nb_failed_requests(ist2->filters[j]->filter);
        if (nb_reqs)
            sub2video_push_ref(ist2, pts2);
    }
}
