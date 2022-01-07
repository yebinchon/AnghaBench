
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int nb_streams; TYPE_1__* priv_data; } ;
struct TYPE_9__ {scalar_t__ initial_timeout; int rtsp_flags; scalar_t__ initial_pause; int * real_setup_cache; int * real_setup; } ;
typedef TYPE_1__ RTSPState ;
typedef TYPE_2__ AVFormatContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int RTSP_FLAG_LISTEN ;
 int * av_mallocz_array (int,int) ;
 int ff_rtsp_close_connections (TYPE_2__*) ;
 int ff_rtsp_close_streams (TYPE_2__*) ;
 int ff_rtsp_connect (TYPE_2__*) ;
 int rtsp_listen (TYPE_2__*) ;
 int rtsp_read_play (TYPE_2__*) ;

__attribute__((used)) static int rtsp_read_header(AVFormatContext *s)
{
    RTSPState *rt = s->priv_data;
    int ret;

    if (rt->initial_timeout > 0)
        rt->rtsp_flags |= RTSP_FLAG_LISTEN;

    if (rt->rtsp_flags & RTSP_FLAG_LISTEN) {
        ret = rtsp_listen(s);
        if (ret)
            return ret;
    } else {
        ret = ff_rtsp_connect(s);
        if (ret)
            return ret;

        rt->real_setup_cache = !s->nb_streams ? ((void*)0) :
            av_mallocz_array(s->nb_streams, 2 * sizeof(*rt->real_setup_cache));
        if (!rt->real_setup_cache && s->nb_streams)
            return AVERROR(ENOMEM);
        rt->real_setup = rt->real_setup_cache + s->nb_streams;

        if (rt->initial_pause) {

        } else {
            if ((ret = rtsp_read_play(s)) < 0) {
                ff_rtsp_close_streams(s);
                ff_rtsp_close_connections(s);
                return ret;
            }
        }
    }

    return 0;
}
