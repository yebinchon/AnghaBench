
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* priv_data; } ;
struct TYPE_9__ {int seq; int member_0; } ;
struct TYPE_8__ {int seq; } ;
typedef TYPE_1__ RTSPState ;
typedef TYPE_2__ RTSPMessageHeader ;
typedef TYPE_3__ AVFormatContext ;


 int RTSP_STATUS_OK ;
 int rtsp_read_request (TYPE_3__*,TYPE_2__*,char*) ;
 int rtsp_send_reply (TYPE_3__*,int ,char*,int ) ;

__attribute__((used)) static int rtsp_read_options(AVFormatContext *s)
{
    RTSPState *rt = s->priv_data;
    RTSPMessageHeader request = { 0 };
    int ret = 0;


    ret = rtsp_read_request(s, &request, "OPTIONS");
    if (ret)
        return ret;
    rt->seq++;

    rtsp_send_reply(s, RTSP_STATUS_OK,
                    "Public: ANNOUNCE, PAUSE, SETUP, TEARDOWN, RECORD\r\n",
                    request.seq);
    return 0;
}
