
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int buf ;
struct TYPE_12__ {scalar_t__ type; int w; char* h; TYPE_4__* dst; TYPE_2__* src; int format; scalar_t__ sample_rate; int channel_layout; } ;
struct TYPE_11__ {TYPE_3__* filter; } ;
struct TYPE_10__ {char* name; } ;
struct TYPE_9__ {TYPE_1__* filter; } ;
struct TYPE_8__ {char* name; } ;
typedef TYPE_5__ AVFilterLink ;


 scalar_t__ AVMEDIA_TYPE_VIDEO ;
 int av_get_channel_layout_string (char*,int,int,int ) ;
 int av_get_pix_fmt_name (int ) ;
 int av_get_sample_fmt_name (int ) ;
 int ff_tlog (void*,char*,TYPE_5__*,int,char*,int ,char*,char*,char*) ;

void ff_tlog_link(void *ctx, AVFilterLink *link, int end)
{
    if (link->type == AVMEDIA_TYPE_VIDEO) {
        ff_tlog(ctx,
                "link[%p s:%dx%d fmt:%s %s->%s]%s",
                link, link->w, link->h,
                av_get_pix_fmt_name(link->format),
                link->src ? link->src->filter->name : "",
                link->dst ? link->dst->filter->name : "",
                end ? "\n" : "");
    } else {
        char buf[128];
        av_get_channel_layout_string(buf, sizeof(buf), -1, link->channel_layout);

        ff_tlog(ctx,
                "link[%p r:%d cl:%s fmt:%s %s->%s]%s",
                link, (int)link->sample_rate, buf,
                av_get_sample_fmt_name(link->format),
                link->src ? link->src->filter->name : "",
                link->dst ? link->dst->filter->name : "",
                end ? "\n" : "");
    }
}
