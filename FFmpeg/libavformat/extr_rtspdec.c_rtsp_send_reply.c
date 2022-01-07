
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16_t ;
typedef int message ;
typedef enum RTSPStatusCode { ____Placeholder_RTSPStatusCode } RTSPStatusCode ;
struct TYPE_8__ {int code; char* message; } ;
struct TYPE_7__ {TYPE_1__* priv_data; } ;
struct TYPE_6__ {int rtsp_hd_out; } ;
typedef TYPE_1__ RTSPState ;
typedef TYPE_2__ AVFormatContext ;


 int AVERROR (int ) ;
 int AV_LOG_TRACE ;
 int EINVAL ;
 int LIBAVFORMAT_IDENT ;
 int av_log (TYPE_2__*,int ,char*,char*) ;
 int av_strlcat (char*,char const*,int) ;
 int av_strlcatf (char*,int,char*,int ) ;
 int ffurl_write (int ,char*,int ) ;
 int snprintf (char*,int,char*,int,char*) ;
 TYPE_3__* status_messages ;
 int strlen (char*) ;

__attribute__((used)) static int rtsp_send_reply(AVFormatContext *s, enum RTSPStatusCode code,
                           const char *extracontent, uint16_t seq)
{
    RTSPState *rt = s->priv_data;
    char message[4096];
    int index = 0;
    while (status_messages[index].code) {
        if (status_messages[index].code == code) {
            snprintf(message, sizeof(message), "RTSP/1.0 %d %s\r\n",
                     code, status_messages[index].message);
            break;
        }
        index++;
    }
    if (!status_messages[index].code)
        return AVERROR(EINVAL);
    av_strlcatf(message, sizeof(message), "CSeq: %d\r\n", seq);
    av_strlcatf(message, sizeof(message), "Server: %s\r\n", LIBAVFORMAT_IDENT);
    if (extracontent)
        av_strlcat(message, extracontent, sizeof(message));
    av_strlcat(message, "\r\n", sizeof(message));
    av_log(s, AV_LOG_TRACE, "Sending response:\n%s", message);
    ffurl_write(rt->rtsp_hd_out, message, strlen(message));

    return 0;
}
