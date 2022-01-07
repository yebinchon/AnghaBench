
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int responseheaders ;
struct TYPE_12__ {TYPE_1__* priv_data; } ;
struct TYPE_11__ {int seq; int member_0; } ;
struct TYPE_10__ {char* session_id; int state; int seq; } ;
typedef TYPE_1__ RTSPState ;
typedef TYPE_2__ RTSPMessageHeader ;
typedef TYPE_3__ AVFormatContext ;


 int RTSP_STATE_STREAMING ;
 int RTSP_STATUS_OK ;
 int check_sessionid (TYPE_3__*,TYPE_2__*) ;
 int rtsp_read_request (TYPE_3__*,TYPE_2__*,char*) ;
 int rtsp_send_reply (TYPE_3__*,int ,char*,int ) ;
 int snprintf (char*,int,char*,char*) ;

__attribute__((used)) static int rtsp_read_record(AVFormatContext *s)
{
    RTSPState *rt = s->priv_data;
    RTSPMessageHeader request = { 0 };
    int ret = 0;
    char responseheaders[1024];

    ret = rtsp_read_request(s, &request, "RECORD");
    if (ret)
        return ret;
    ret = check_sessionid(s, &request);
    if (ret)
        return ret;
    rt->seq++;
    snprintf(responseheaders, sizeof(responseheaders), "Session: %s\r\n",
             rt->session_id);
    rtsp_send_reply(s, RTSP_STATUS_OK, responseheaders, request.seq);

    rt->state = RTSP_STATE_STREAMING;
    return 0;
}
