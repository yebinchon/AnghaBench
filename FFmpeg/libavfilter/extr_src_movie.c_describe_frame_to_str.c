
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef enum AVMediaType { ____Placeholder_AVMediaType } AVMediaType ;
struct TYPE_8__ {int time_base; } ;
struct TYPE_6__ {int num; int den; } ;
struct TYPE_7__ {int width; int height; int nb_samples; int pts; TYPE_1__ sample_aspect_ratio; } ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVFilterLink ;




 char* av_get_media_type_string (int) ;
 char* av_ts2str (int ) ;
 char* av_ts2timestr (int ,int *) ;
 int snprintf (char*,size_t,char*,char*,...) ;

__attribute__((used)) static char *describe_frame_to_str(char *dst, size_t dst_size,
                                   AVFrame *frame, enum AVMediaType frame_type,
                                   AVFilterLink *link)
{
    switch (frame_type) {
    case 128:
        snprintf(dst, dst_size,
                 "video pts:%s time:%s size:%dx%d aspect:%d/%d",
                 av_ts2str(frame->pts), av_ts2timestr(frame->pts, &link->time_base),
                 frame->width, frame->height,
                 frame->sample_aspect_ratio.num,
                 frame->sample_aspect_ratio.den);
                 break;
    case 129:
        snprintf(dst, dst_size,
                 "audio pts:%s time:%s samples:%d",
                 av_ts2str(frame->pts), av_ts2timestr(frame->pts, &link->time_base),
                 frame->nb_samples);
                 break;
    default:
        snprintf(dst, dst_size, "%s BUG", av_get_media_type_string(frame_type));
        break;
    }
    return dst;
}
