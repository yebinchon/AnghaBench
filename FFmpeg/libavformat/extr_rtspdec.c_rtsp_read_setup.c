
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int url ;
typedef int responseheaders ;
typedef int buf ;
struct TYPE_17__ {int protocol_blacklist; int protocol_whitelist; int interrupt_callback; TYPE_3__* priv_data; } ;
struct TYPE_16__ {int nb_transports; int seq; TYPE_1__* transports; int member_0; } ;
struct TYPE_15__ {int nb_rtsp_streams; int rtp_port_min; int rtp_port_max; int buffer_size; char* session_id; int state; scalar_t__ lower_transport; TYPE_2__** rtsp_streams; int seq; } ;
struct TYPE_14__ {int interleaved_min; int interleaved_max; int rtp_handle; int control_url; } ;
struct TYPE_13__ {scalar_t__ lower_transport; int interleaved_min; int interleaved_max; int client_port_min; int client_port_max; int mode_record; } ;
typedef TYPE_2__ RTSPStream ;
typedef TYPE_3__ RTSPState ;
typedef TYPE_4__ RTSPMessageHeader ;
typedef TYPE_5__ AVFormatContext ;
typedef int AVDictionary ;


 int AVERROR_INVALIDDATA ;
 int AVERROR_STREAM_NOT_FOUND ;
 int AVIO_FLAG_READ_WRITE ;
 int AV_LOG_ERROR ;
 int AV_LOG_TRACE ;
 int AV_LOG_WARNING ;
 scalar_t__ RTSP_LOWER_TRANSPORT_TCP ;
 scalar_t__ RTSP_LOWER_TRANSPORT_UDP ;
 int RTSP_STATE_PAUSED ;
 int RTSP_STATUS_OK ;
 int RTSP_STATUS_TRANSPORT ;
 int av_dict_free (int **) ;
 int av_dict_set (int **,char*,char*,int ) ;
 char* av_get_random_seed () ;
 int av_log (TYPE_5__*,int ,char*,...) ;
 int av_strlcatf (char*,int,char*,char*) ;
 char* ff_rtp_get_local_rtp_port (int ) ;
 int ff_rtsp_open_transport_ctx (TYPE_5__*,TYPE_2__*) ;
 int ff_url_join (char*,int,char*,int *,char*,int,int *) ;
 int ffurl_open_whitelist (int *,char*,int ,int *,int **,int ,int ,int *) ;
 int rtsp_read_request (TYPE_5__*,TYPE_4__*,char*) ;
 int rtsp_send_reply (TYPE_5__*,int ,char*,int ) ;
 int snprintf (char*,int,char*,...) ;
 int strcmp (int ,char*) ;
 int strlen (char*) ;

__attribute__((used)) static int rtsp_read_setup(AVFormatContext *s, char* host, char *controlurl)
{
    RTSPState *rt = s->priv_data;
    RTSPMessageHeader request = { 0 };
    int ret = 0;
    char url[1024];
    RTSPStream *rtsp_st;
    char responseheaders[1024];
    int localport = -1;
    int transportidx = 0;
    int streamid = 0;

    ret = rtsp_read_request(s, &request, "SETUP");
    if (ret)
        return ret;
    rt->seq++;
    if (!request.nb_transports) {
        av_log(s, AV_LOG_ERROR, "No transport defined in SETUP\n");
        return AVERROR_INVALIDDATA;
    }
    for (transportidx = 0; transportidx < request.nb_transports;
         transportidx++) {
        if (!request.transports[transportidx].mode_record ||
            (request.transports[transportidx].lower_transport !=
             RTSP_LOWER_TRANSPORT_UDP &&
             request.transports[transportidx].lower_transport !=
             RTSP_LOWER_TRANSPORT_TCP)) {
            av_log(s, AV_LOG_ERROR, "mode=record/receive not set or transport"
                   " protocol not supported (yet)\n");
            return AVERROR_INVALIDDATA;
        }
    }
    if (request.nb_transports > 1)
        av_log(s, AV_LOG_WARNING, "More than one transport not supported, "
               "using first of all\n");
    for (streamid = 0; streamid < rt->nb_rtsp_streams; streamid++) {
        if (!strcmp(rt->rtsp_streams[streamid]->control_url,
                    controlurl))
            break;
    }
    if (streamid == rt->nb_rtsp_streams) {
        av_log(s, AV_LOG_ERROR, "Unable to find requested track\n");
        return AVERROR_STREAM_NOT_FOUND;
    }
    rtsp_st = rt->rtsp_streams[streamid];
    localport = rt->rtp_port_min;

    if (request.transports[0].lower_transport == RTSP_LOWER_TRANSPORT_TCP) {
        rt->lower_transport = RTSP_LOWER_TRANSPORT_TCP;
        if ((ret = ff_rtsp_open_transport_ctx(s, rtsp_st))) {
            rtsp_send_reply(s, RTSP_STATUS_TRANSPORT, ((void*)0), request.seq);
            return ret;
        }
        rtsp_st->interleaved_min = request.transports[0].interleaved_min;
        rtsp_st->interleaved_max = request.transports[0].interleaved_max;
        snprintf(responseheaders, sizeof(responseheaders), "Transport: "
                 "RTP/AVP/TCP;unicast;mode=receive;interleaved=%d-%d"
                 "\r\n", request.transports[0].interleaved_min,
                 request.transports[0].interleaved_max);
    } else {
        do {
            AVDictionary *opts = ((void*)0);
            char buf[256];
            snprintf(buf, sizeof(buf), "%d", rt->buffer_size);
            av_dict_set(&opts, "buffer_size", buf, 0);
            ff_url_join(url, sizeof(url), "rtp", ((void*)0), host, localport, ((void*)0));
            av_log(s, AV_LOG_TRACE, "Opening: %s", url);
            ret = ffurl_open_whitelist(&rtsp_st->rtp_handle, url, AVIO_FLAG_READ_WRITE,
                                       &s->interrupt_callback, &opts,
                                       s->protocol_whitelist, s->protocol_blacklist, ((void*)0));
            av_dict_free(&opts);
            if (ret)
                localport += 2;
        } while (ret || localport > rt->rtp_port_max);
        if (localport > rt->rtp_port_max) {
            rtsp_send_reply(s, RTSP_STATUS_TRANSPORT, ((void*)0), request.seq);
            return ret;
        }

        av_log(s, AV_LOG_TRACE, "Listening on: %d",
                ff_rtp_get_local_rtp_port(rtsp_st->rtp_handle));
        if ((ret = ff_rtsp_open_transport_ctx(s, rtsp_st))) {
            rtsp_send_reply(s, RTSP_STATUS_TRANSPORT, ((void*)0), request.seq);
            return ret;
        }

        localport = ff_rtp_get_local_rtp_port(rtsp_st->rtp_handle);
        snprintf(responseheaders, sizeof(responseheaders), "Transport: "
                 "RTP/AVP/UDP;unicast;mode=receive;source=%s;"
                 "client_port=%d-%d;server_port=%d-%d\r\n",
                 host, request.transports[0].client_port_min,
                 request.transports[0].client_port_max, localport,
                 localport + 1);
    }




    while (strlen(rt->session_id) < 8)
        av_strlcatf(rt->session_id, 512, "%u", av_get_random_seed());

    av_strlcatf(responseheaders, sizeof(responseheaders), "Session: %s\r\n",
                rt->session_id);

    rtsp_send_reply(s, RTSP_STATUS_OK, responseheaders, request.seq);

    rt->state = RTSP_STATE_PAUSED;
    return 0;
}
