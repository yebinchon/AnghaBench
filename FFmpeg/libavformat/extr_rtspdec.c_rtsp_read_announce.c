
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int sdp ;
struct TYPE_12__ {TYPE_1__* priv_data; } ;
struct TYPE_11__ {int content_length; int seq; int content_type; int member_0; } ;
struct TYPE_10__ {int rtsp_hd; int seq; } ;
typedef TYPE_1__ RTSPState ;
typedef TYPE_2__ RTSPMessageHeader ;
typedef TYPE_3__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_OPTION_NOT_FOUND ;
 int AV_LOG_ERROR ;
 int AV_LOG_VERBOSE ;
 int EIO ;
 int RTSP_STATUS_INTERNAL ;
 int RTSP_STATUS_OK ;
 int RTSP_STATUS_SERVICE ;
 int av_log (TYPE_3__*,int ,char*,...) ;
 int ff_sdp_parse (TYPE_3__*,char*) ;
 int ffurl_read_complete (int ,char*,int) ;
 int rtsp_read_request (TYPE_3__*,TYPE_2__*,char*) ;
 int rtsp_send_reply (TYPE_3__*,int ,char*,int ) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int rtsp_read_announce(AVFormatContext *s)
{
    RTSPState *rt = s->priv_data;
    RTSPMessageHeader request = { 0 };
    char sdp[4096];
    int ret;

    ret = rtsp_read_request(s, &request, "ANNOUNCE");
    if (ret)
        return ret;
    rt->seq++;
    if (strcmp(request.content_type, "application/sdp")) {
        av_log(s, AV_LOG_ERROR, "Unexpected content type %s\n",
               request.content_type);
        rtsp_send_reply(s, RTSP_STATUS_SERVICE, ((void*)0), request.seq);
        return AVERROR_OPTION_NOT_FOUND;
    }
    if (request.content_length && request.content_length < sizeof(sdp) - 1) {

        if (ffurl_read_complete(rt->rtsp_hd, sdp, request.content_length)
            < request.content_length) {
            av_log(s, AV_LOG_ERROR,
                   "Unable to get complete SDP Description in ANNOUNCE\n");
            rtsp_send_reply(s, RTSP_STATUS_INTERNAL, ((void*)0), request.seq);
            return AVERROR(EIO);
        }
        sdp[request.content_length] = '\0';
        av_log(s, AV_LOG_VERBOSE, "SDP: %s\n", sdp);
        ret = ff_sdp_parse(s, sdp);
        if (ret)
            return ret;
        rtsp_send_reply(s, RTSP_STATUS_OK, ((void*)0), request.seq);
        return 0;
    }
    av_log(s, AV_LOG_ERROR,
           "Content-Length header value exceeds sdp allocated buffer (4KB)\n");
    rtsp_send_reply(s, RTSP_STATUS_INTERNAL,
                    "Content-Length exceeds buffer size", request.seq);
    return AVERROR(EIO);
}
