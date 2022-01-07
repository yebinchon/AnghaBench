
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef char uint8_t ;
struct TYPE_9__ {int nb_streams; TYPE_1__** streams; } ;
struct TYPE_8__ {scalar_t__ type; char* name; } ;
struct TYPE_7__ {int * codec; } ;
typedef TYPE_1__ AVStream ;
typedef TYPE_2__ AVOption ;
typedef TYPE_3__ AVFormatContext ;
typedef int AVCodecContext ;


 scalar_t__ AV_OPT_TYPE_CONST ;
 int av_free (char*) ;
 scalar_t__ av_opt_get (int *,char*,int ,char**) ;
 TYPE_2__* av_opt_next (int *,TYPE_2__ const*) ;
 int printf (char*,...) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static void dump_video_streams(const AVFormatContext *fmt_ctx, int decode)
{
    int i;

    for (i = 0; i < fmt_ctx->nb_streams; i++) {
        const AVOption *opt = ((void*)0);
        const AVStream *st = fmt_ctx->streams[i];
        AVCodecContext *codec_ctx = st->codec;

        printf("stream=%d, decode=%d\n", i, decode);
        while (opt = av_opt_next(codec_ctx, opt)) {
            uint8_t *str;

            if (opt->type == AV_OPT_TYPE_CONST)
                continue;

            if (!strcmp(opt->name, "frame_number"))
                continue;

            if (av_opt_get(codec_ctx, opt->name, 0, &str) >= 0) {
                printf("    %s=%s\n", opt->name, str);
                av_free(str);
            }
        }
    }
}
