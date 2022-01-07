
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uri ;
typedef int tcpname ;
typedef int rbuf ;
typedef int proto ;
typedef int path ;
typedef int method ;
typedef int host ;
typedef enum RTSPMethod { ____Placeholder_RTSPMethod } RTSPMethod ;
typedef int auth ;
struct TYPE_12__ {int protocol_blacklist; int protocol_whitelist; int interrupt_callback; int url; TYPE_1__* priv_data; } ;
struct TYPE_11__ {int initial_timeout; int rtsp_hd; int state; int rtsp_hd_out; int control_uri; } ;
typedef TYPE_1__ RTSPState ;
typedef TYPE_2__ AVFormatContext ;


 int ANNOUNCE ;
 int AVERROR_INVALIDDATA ;
 int AVIO_FLAG_READ_WRITE ;
 int AV_LOG_ERROR ;
 int OPTIONS ;
 int RECORD ;
 int RTSPS_DEFAULT_PORT ;
 int RTSP_DEFAULT_PORT ;
 int RTSP_STATE_IDLE ;
 int RTSP_STATE_PAUSED ;
 int SETUP ;
 int av_log (TYPE_2__*,int ,char*) ;
 int av_url_split (char*,int,char*,int,char*,int,int*,char*,int,int ) ;
 int ff_url_join (char*,int,char const*,int *,char*,int,char*,...) ;
 int ffurl_close (int ) ;
 int ffurl_open_whitelist (int *,char*,int ,int *,int *,int ,int ,int *) ;
 int parse_command_line (TYPE_2__*,unsigned char*,int,char*,int,unsigned char*,int,int*) ;
 int read_line (TYPE_2__*,unsigned char*,int,int*) ;
 int rtsp_read_announce (TYPE_2__*) ;
 int rtsp_read_options (TYPE_2__*) ;
 int rtsp_read_record (TYPE_2__*) ;
 int rtsp_read_setup (TYPE_2__*,char*,char*) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static int rtsp_listen(AVFormatContext *s)
{
    RTSPState *rt = s->priv_data;
    char proto[128], host[128], path[512], auth[128];
    char uri[500];
    int port;
    int default_port = RTSP_DEFAULT_PORT;
    char tcpname[500];
    const char *lower_proto = "tcp";
    unsigned char rbuf[4096];
    unsigned char method[10];
    int rbuflen = 0;
    int ret;
    enum RTSPMethod methodcode;


    av_url_split(proto, sizeof(proto), auth, sizeof(auth), host, sizeof(host),
                 &port, path, sizeof(path), s->url);


    ff_url_join(rt->control_uri, sizeof(rt->control_uri), proto, ((void*)0), host,
                port, "%s", path);

    if (!strcmp(proto, "rtsps")) {
        lower_proto = "tls";
        default_port = RTSPS_DEFAULT_PORT;
    }

    if (port < 0)
        port = default_port;


    ff_url_join(tcpname, sizeof(tcpname), lower_proto, ((void*)0), host, port,
                "?listen&listen_timeout=%d", rt->initial_timeout * 1000);

    if (ret = ffurl_open_whitelist(&rt->rtsp_hd, tcpname, AVIO_FLAG_READ_WRITE,
                                   &s->interrupt_callback, ((void*)0),
                                   s->protocol_whitelist, s->protocol_blacklist, ((void*)0))) {
        av_log(s, AV_LOG_ERROR, "Unable to open RTSP for listening\n");
        return ret;
    }
    rt->state = RTSP_STATE_IDLE;
    rt->rtsp_hd_out = rt->rtsp_hd;
    for (;;) {
        ret = read_line(s, rbuf, sizeof(rbuf), &rbuflen);
        if (ret < 0)
            return ret;
        ret = parse_command_line(s, rbuf, rbuflen, uri, sizeof(uri), method,
                                 sizeof(method), &methodcode);
        if (ret) {
            av_log(s, AV_LOG_ERROR, "RTSP: Unexpected Command\n");
            return ret;
        }

        if (methodcode == ANNOUNCE) {
            ret = rtsp_read_announce(s);
            rt->state = RTSP_STATE_PAUSED;
        } else if (methodcode == OPTIONS) {
            ret = rtsp_read_options(s);
        } else if (methodcode == RECORD) {
            ret = rtsp_read_record(s);
            if (!ret)
                return 0;
        } else if (methodcode == SETUP)
            ret = rtsp_read_setup(s, host, uri);
        if (ret) {
            ffurl_close(rt->rtsp_hd);
            return AVERROR_INVALIDDATA;
        }
    }
}
