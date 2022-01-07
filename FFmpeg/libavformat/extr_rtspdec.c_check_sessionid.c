
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* priv_data; } ;
struct TYPE_9__ {int seq; int session_id; } ;
struct TYPE_8__ {unsigned char* session_id; } ;
typedef TYPE_1__ RTSPState ;
typedef TYPE_2__ RTSPMessageHeader ;
typedef TYPE_3__ AVFormatContext ;


 int AVERROR_STREAM_NOT_FOUND ;
 int AV_LOG_ERROR ;
 int AV_LOG_WARNING ;
 int RTSP_STATUS_SESSION ;
 int av_log (TYPE_3__*,int ,char*,...) ;
 int rtsp_send_reply (TYPE_3__*,int ,int *,int ) ;
 scalar_t__ strcmp (unsigned char*,int ) ;

__attribute__((used)) static inline int check_sessionid(AVFormatContext *s,
                                  RTSPMessageHeader *request)
{
    RTSPState *rt = s->priv_data;
    unsigned char *session_id = rt->session_id;
    if (!session_id[0]) {
        av_log(s, AV_LOG_WARNING, "There is no session-id at the moment\n");
        return 0;
    }
    if (strcmp(session_id, request->session_id)) {
        av_log(s, AV_LOG_ERROR, "Unexpected session-id %s\n",
               request->session_id);
        rtsp_send_reply(s, RTSP_STATUS_SESSION, ((void*)0), request->seq);
        return AVERROR_STREAM_NOT_FOUND;
    }
    return 0;
}
