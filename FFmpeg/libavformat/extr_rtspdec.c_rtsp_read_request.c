
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int rbuf ;
struct TYPE_15__ {TYPE_1__* priv_data; } ;
struct TYPE_14__ {scalar_t__ seq; } ;
struct TYPE_13__ {scalar_t__ seq; scalar_t__* session_id; } ;
typedef TYPE_1__ RTSPState ;
typedef TYPE_2__ RTSPMessageHeader ;
typedef TYPE_3__ AVFormatContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int AV_LOG_TRACE ;
 int EINVAL ;
 int av_log (TYPE_3__*,int ,char*,scalar_t__,...) ;
 int check_sessionid (TYPE_3__*,TYPE_2__*) ;
 int ff_rtsp_parse_line (TYPE_3__*,TYPE_2__*,char*,TYPE_1__*,char const*) ;
 int read_line (TYPE_3__*,char*,int,int*) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static inline int rtsp_read_request(AVFormatContext *s,
                                    RTSPMessageHeader *request,
                                    const char *method)
{
    RTSPState *rt = s->priv_data;
    char rbuf[1024];
    int rbuflen, ret;
    do {
        ret = read_line(s, rbuf, sizeof(rbuf), &rbuflen);
        if (ret)
            return ret;
        if (rbuflen > 1) {
            av_log(s, AV_LOG_TRACE, "Parsing[%d]: %s\n", rbuflen, rbuf);
            ff_rtsp_parse_line(s, request, rbuf, rt, method);
        }
    } while (rbuflen > 0);
    if (request->seq != rt->seq + 1) {
        av_log(s, AV_LOG_ERROR, "Unexpected Sequence number %d\n",
               request->seq);
        return AVERROR(EINVAL);
    }
    if (rt->session_id[0] && strcmp(method, "OPTIONS")) {
        ret = check_sessionid(s, request);
        if (ret)
            return ret;
    }

    return 0;
}
