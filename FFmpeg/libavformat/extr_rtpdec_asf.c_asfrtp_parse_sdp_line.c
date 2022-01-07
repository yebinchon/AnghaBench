
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ id; int need_parsing; int codecpar; } ;
struct TYPE_10__ {TYPE_5__** streams; TYPE_3__* priv_data; } ;
struct TYPE_9__ {TYPE_2__* asf_ctx; } ;
struct TYPE_8__ {int nb_streams; TYPE_1__** streams; } ;
struct TYPE_7__ {scalar_t__ id; int need_parsing; int codecpar; } ;
typedef TYPE_3__ RTSPState ;
typedef int PayloadContext ;
typedef TYPE_4__ AVFormatContext ;


 scalar_t__ av_strstart (char const*,char*,char const**) ;
 int avcodec_parameters_copy (int ,int ) ;
 int avpriv_set_pts_info (TYPE_5__*,int,int,int) ;
 scalar_t__ strtol (char const*,int *,int) ;

__attribute__((used)) static int asfrtp_parse_sdp_line(AVFormatContext *s, int stream_index,
                                 PayloadContext *asf, const char *line)
{
    if (stream_index < 0)
        return 0;
    if (av_strstart(line, "stream:", &line)) {
        RTSPState *rt = s->priv_data;

        s->streams[stream_index]->id = strtol(line, ((void*)0), 10);

        if (rt->asf_ctx) {
            int i;

            for (i = 0; i < rt->asf_ctx->nb_streams; i++) {
                if (s->streams[stream_index]->id == rt->asf_ctx->streams[i]->id) {
                    avcodec_parameters_copy(s->streams[stream_index]->codecpar,
                                            rt->asf_ctx->streams[i]->codecpar);
                    s->streams[stream_index]->need_parsing =
                        rt->asf_ctx->streams[i]->need_parsing;
                    avpriv_set_pts_info(s->streams[stream_index], 32, 1, 1000);
                }
           }
        }
    }

    return 0;
}
