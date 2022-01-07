
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ end_pts; } ;
struct TYPE_8__ {int nb_filters; TYPE_2__** filters; TYPE_1__ sub2video; } ;
struct TYPE_7__ {int filter; } ;
typedef TYPE_3__ InputStream ;


 int AVERROR_EOF ;
 int AV_LOG_WARNING ;
 scalar_t__ INT64_MAX ;
 int av_buffersrc_add_frame (int ,int *) ;
 int av_log (int *,int ,char*) ;
 int sub2video_update (TYPE_3__*,int *) ;

__attribute__((used)) static void sub2video_flush(InputStream *ist)
{
    int i;
    int ret;

    if (ist->sub2video.end_pts < INT64_MAX)
        sub2video_update(ist, ((void*)0));
    for (i = 0; i < ist->nb_filters; i++) {
        ret = av_buffersrc_add_frame(ist->filters[i]->filter, ((void*)0));
        if (ret != AVERROR_EOF && ret < 0)
            av_log(((void*)0), AV_LOG_WARNING, "Flush the frame error.\n");
    }
}
