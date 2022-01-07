
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_9__ {TYPE_1__** streams; TYPE_2__* priv_data; } ;
struct TYPE_8__ {int state; int seek_timestamp; } ;
struct TYPE_7__ {int time_base; } ;
typedef TYPE_2__ RTSPState ;
typedef TYPE_3__ AVFormatContext ;


 int AV_TIME_BASE_Q ;


 int RTSP_STATE_SEEKING ;

 int av_rescale_q (int ,int ,int ) ;
 int rtsp_read_pause (TYPE_3__*) ;
 int rtsp_read_play (TYPE_3__*) ;

__attribute__((used)) static int rtsp_read_seek(AVFormatContext *s, int stream_index,
                          int64_t timestamp, int flags)
{
    RTSPState *rt = s->priv_data;
    int ret;

    rt->seek_timestamp = av_rescale_q(timestamp,
                                      s->streams[stream_index]->time_base,
                                      AV_TIME_BASE_Q);
    switch(rt->state) {
    default:
    case 130:
        break;
    case 128:
        if ((ret = rtsp_read_pause(s)) != 0)
            return ret;
        rt->state = RTSP_STATE_SEEKING;
        if ((ret = rtsp_read_play(s)) != 0)
            return ret;
        break;
    case 129:
        rt->state = 130;
        break;
    }
    return 0;
}
