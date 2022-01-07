
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uri ;
typedef int rbuf ;
typedef int method ;
typedef enum RTSPMethod { ____Placeholder_RTSPMethod } RTSPMethod ;
struct TYPE_13__ {TYPE_1__* priv_data; } ;
struct TYPE_12__ {int seq; int member_0; } ;
struct TYPE_11__ {int state; int seq; } ;
typedef TYPE_1__ RTSPState ;
typedef TYPE_2__ RTSPMessageHeader ;
typedef TYPE_3__ AVFormatContext ;


 int AV_LOG_ERROR ;
 int OPTIONS ;
 int PAUSE ;
 int RTSP_STATE_IDLE ;
 int RTSP_STATE_PAUSED ;
 int RTSP_STATUS_OK ;
 int TEARDOWN ;
 int av_log (TYPE_3__*,int ,char*) ;
 int parse_command_line (TYPE_3__*,unsigned char*,int,char*,int,unsigned char*,int,int*) ;
 int read_line (TYPE_3__*,unsigned char*,int,int*) ;
 int rtsp_read_request (TYPE_3__*,TYPE_2__*,unsigned char*) ;
 int rtsp_send_reply (TYPE_3__*,int ,char*,int ) ;

int ff_rtsp_parse_streaming_commands(AVFormatContext *s)
{
    RTSPState *rt = s->priv_data;
    unsigned char rbuf[4096];
    unsigned char method[10];
    char uri[500];
    int ret;
    int rbuflen = 0;
    RTSPMessageHeader request = { 0 };
    enum RTSPMethod methodcode;

    ret = read_line(s, rbuf, sizeof(rbuf), &rbuflen);
    if (ret < 0)
        return ret;
    ret = parse_command_line(s, rbuf, rbuflen, uri, sizeof(uri), method,
                             sizeof(method), &methodcode);
    if (ret) {
        av_log(s, AV_LOG_ERROR, "RTSP: Unexpected Command\n");
        return ret;
    }

    ret = rtsp_read_request(s, &request, method);
    if (ret)
        return ret;
    rt->seq++;
    if (methodcode == PAUSE) {
        rt->state = RTSP_STATE_PAUSED;
        ret = rtsp_send_reply(s, RTSP_STATUS_OK, ((void*)0) , request.seq);

    } else if (methodcode == OPTIONS) {
        ret = rtsp_send_reply(s, RTSP_STATUS_OK,
                              "Public: ANNOUNCE, PAUSE, SETUP, TEARDOWN, "
                              "RECORD\r\n", request.seq);
    } else if (methodcode == TEARDOWN) {
        rt->state = RTSP_STATE_IDLE;
        ret = rtsp_send_reply(s, RTSP_STATUS_OK, ((void*)0) , request.seq);
    }
    return ret;
}
