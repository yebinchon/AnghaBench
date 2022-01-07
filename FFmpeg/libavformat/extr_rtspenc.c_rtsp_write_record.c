
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int cmd ;
struct TYPE_9__ {TYPE_1__* priv_data; } ;
struct TYPE_8__ {scalar_t__ status_code; } ;
struct TYPE_7__ {int state; int control_uri; } ;
typedef TYPE_1__ RTSPState ;
typedef TYPE_2__ RTSPMessageHeader ;
typedef TYPE_3__ AVFormatContext ;


 int RTSP_STATE_STREAMING ;
 scalar_t__ RTSP_STATUS_OK ;
 int ff_rtsp_averror (scalar_t__,int) ;
 int ff_rtsp_send_cmd (TYPE_3__*,char*,int ,char*,TYPE_2__*,int *) ;
 int snprintf (char*,int,char*) ;

__attribute__((used)) static int rtsp_write_record(AVFormatContext *s)
{
    RTSPState *rt = s->priv_data;
    RTSPMessageHeader reply1, *reply = &reply1;
    char cmd[1024];

    snprintf(cmd, sizeof(cmd),
             "Range: npt=0.000-\r\n");
    ff_rtsp_send_cmd(s, "RECORD", rt->control_uri, cmd, reply, ((void*)0));
    if (reply->status_code != RTSP_STATUS_OK)
        return ff_rtsp_averror(reply->status_code, -1);
    rt->state = RTSP_STATE_STREAMING;
    return 0;
}
