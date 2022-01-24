#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uri ;
typedef  int /*<<< orphan*/  tcpname ;
typedef  int /*<<< orphan*/  rbuf ;
typedef  int /*<<< orphan*/  proto ;
typedef  int /*<<< orphan*/  path ;
typedef  int /*<<< orphan*/  method ;
typedef  int /*<<< orphan*/  host ;
typedef  enum RTSPMethod { ____Placeholder_RTSPMethod } RTSPMethod ;
typedef  int /*<<< orphan*/  auth ;
struct TYPE_12__ {int /*<<< orphan*/  protocol_blacklist; int /*<<< orphan*/  protocol_whitelist; int /*<<< orphan*/  interrupt_callback; int /*<<< orphan*/  url; TYPE_1__* priv_data; } ;
struct TYPE_11__ {int initial_timeout; int /*<<< orphan*/  rtsp_hd; int /*<<< orphan*/  state; int /*<<< orphan*/  rtsp_hd_out; int /*<<< orphan*/  control_uri; } ;
typedef  TYPE_1__ RTSPState ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int ANNOUNCE ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AVIO_FLAG_READ_WRITE ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int OPTIONS ; 
 int RECORD ; 
 int RTSPS_DEFAULT_PORT ; 
 int RTSP_DEFAULT_PORT ; 
 int /*<<< orphan*/  RTSP_STATE_IDLE ; 
 int /*<<< orphan*/  RTSP_STATE_PAUSED ; 
 int SETUP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int,char*,int,int*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char const*,int /*<<< orphan*/ *,char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_2__*,unsigned char*,int,char*,int,unsigned char*,int,int*) ; 
 int FUNC6 (TYPE_2__*,unsigned char*,int,int*) ; 
 int FUNC7 (TYPE_2__*) ; 
 int FUNC8 (TYPE_2__*) ; 
 int FUNC9 (TYPE_2__*) ; 
 int FUNC10 (TYPE_2__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 

__attribute__((used)) static int FUNC12(AVFormatContext *s)
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

    /* extract hostname and port */
    FUNC1(proto, sizeof(proto), auth, sizeof(auth), host, sizeof(host),
                 &port, path, sizeof(path), s->url);

    /* ff_url_join. No authorization by now (NULL) */
    FUNC2(rt->control_uri, sizeof(rt->control_uri), proto, NULL, host,
                port, "%s", path);

    if (!FUNC11(proto, "rtsps")) {
        lower_proto  = "tls";
        default_port = RTSPS_DEFAULT_PORT;
    }

    if (port < 0)
        port = default_port;

    /* Create TCP connection */
    FUNC2(tcpname, sizeof(tcpname), lower_proto, NULL, host, port,
                "?listen&listen_timeout=%d", rt->initial_timeout * 1000);

    if ((ret = FUNC4(&rt->rtsp_hd, tcpname, AVIO_FLAG_READ_WRITE,
                                   &s->interrupt_callback, NULL,
                                   s->protocol_whitelist, s->protocol_blacklist, NULL))) {
        FUNC0(s, AV_LOG_ERROR, "Unable to open RTSP for listening\n");
        return ret;
    }
    rt->state       = RTSP_STATE_IDLE;
    rt->rtsp_hd_out = rt->rtsp_hd;
    for (;;) { /* Wait for incoming RTSP messages */
        ret = FUNC6(s, rbuf, sizeof(rbuf), &rbuflen);
        if (ret < 0)
            return ret;
        ret = FUNC5(s, rbuf, rbuflen, uri, sizeof(uri), method,
                                 sizeof(method), &methodcode);
        if (ret) {
            FUNC0(s, AV_LOG_ERROR, "RTSP: Unexpected Command\n");
            return ret;
        }

        if (methodcode == ANNOUNCE) {
            ret       = FUNC7(s);
            rt->state = RTSP_STATE_PAUSED;
        } else if (methodcode == OPTIONS) {
            ret = FUNC8(s);
        } else if (methodcode == RECORD) {
            ret = FUNC9(s);
            if (!ret)
                return 0; // We are ready for streaming
        } else if (methodcode == SETUP)
            ret = FUNC10(s, host, uri);
        if (ret) {
            FUNC3(rt->rtsp_hd);
            return AVERROR_INVALIDDATA;
        }
    }
}