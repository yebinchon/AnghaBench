
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int layout ;
struct TYPE_9__ {int len; int member_0; } ;
struct TYPE_7__ {int den; int num; } ;
struct TYPE_8__ {int type; scalar_t__ sample_rate; int format; int channel_layout; int channels; TYPE_1__ sample_aspect_ratio; int h; int w; } ;
typedef TYPE_2__ AVFilterLink ;
typedef TYPE_3__ AVBPrint ;




 int av_bprintf (TYPE_3__*,char*,...) ;
 int av_get_channel_layout_string (char*,int,int ,int ) ;
 int av_get_pix_fmt_name (int ) ;
 int av_get_sample_fmt_name (int ) ;
 char* av_x_if_null (int ,char*) ;

__attribute__((used)) static int print_link_prop(AVBPrint *buf, AVFilterLink *link)
{
    char *format;
    char layout[64];
    AVBPrint dummy_buffer = { 0 };

    if (!buf)
        buf = &dummy_buffer;
    switch (link->type) {
        case 128:
            format = av_x_if_null(av_get_pix_fmt_name(link->format), "?");
            av_bprintf(buf, "[%dx%d %d:%d %s]", link->w, link->h,
                    link->sample_aspect_ratio.num,
                    link->sample_aspect_ratio.den,
                    format);
            break;

        case 129:
            av_get_channel_layout_string(layout, sizeof(layout),
                                         link->channels, link->channel_layout);
            format = av_x_if_null(av_get_sample_fmt_name(link->format), "?");
            av_bprintf(buf, "[%dHz %s:%s]",
                       (int)link->sample_rate, format, layout);
            break;

        default:
            av_bprintf(buf, "?");
            break;
    }
    return buf->len;
}
