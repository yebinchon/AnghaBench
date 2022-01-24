#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  path ;
typedef  int /*<<< orphan*/  include_sources ;
typedef  int /*<<< orphan*/  hostname ;
typedef  int /*<<< orphan*/  exclude_sources ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_14__ {int is_streamed; int /*<<< orphan*/  max_packet_size; int /*<<< orphan*/  protocol_blacklist; int /*<<< orphan*/  protocol_whitelist; int /*<<< orphan*/  interrupt_callback; TYPE_2__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_16__ {int /*<<< orphan*/  max_packet_size; } ;
struct TYPE_15__ {int rtcp_port; scalar_t__ ttl; int local_rtpport; int local_rtcpport; char* sources; char* block; char* fec_options_str; TYPE_4__* fec_hd; TYPE_4__* rtcp_hd; TYPE_4__* rtp_hd; void* rtcp_fd; void* rtp_fd; int /*<<< orphan*/  filters; void* dscp; void* write_to_source; void* connect; void* pkt_size; } ;
typedef  TYPE_2__ RTPContext ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVIO_FLAG_WRITE ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ **,char const*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (char const**,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int*,char*,int,char const*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,char*,int,char*,int,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,char*,int /*<<< orphan*/ *) ; 
 int FUNC13 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,char*,int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__**) ; 
 void* FUNC17 (TYPE_4__*) ; 
 scalar_t__ FUNC18 (TYPE_4__**,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 (char*,int,char*,scalar_t__) ; 
 char* FUNC20 (char const*,char) ; 
 scalar_t__ FUNC21 (char*,char*) ; 
 int FUNC22 (char*) ; 
 void* FUNC23 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC24(URLContext *h, const char *uri, int flags)
{
    RTPContext *s = h->priv_data;
    AVDictionary *fec_opts = NULL;
    int rtp_port;
    char hostname[256], include_sources[1024] = "", exclude_sources[1024] = "";
    char *sources = include_sources, *block = exclude_sources;
    char *fec_protocol = NULL;
    char buf[1024];
    char path[1024];
    const char *p;
    int i, max_retry_count = 3;
    int rtcpflags;

    FUNC9(NULL, 0, NULL, 0, hostname, sizeof(hostname), &rtp_port,
                 path, sizeof(path), uri);
    /* extract parameters */
    if (s->rtcp_port < 0)
        s->rtcp_port = rtp_port + 1;

    p = FUNC20(uri, '?');
    if (p) {
        if (FUNC4(buf, sizeof(buf), "ttl", p)) {
            s->ttl = FUNC23(buf, NULL, 10);
        }
        if (FUNC4(buf, sizeof(buf), "rtcpport", p)) {
            s->rtcp_port = FUNC23(buf, NULL, 10);
        }
        if (FUNC4(buf, sizeof(buf), "localport", p)) {
            s->local_rtpport = FUNC23(buf, NULL, 10);
        }
        if (FUNC4(buf, sizeof(buf), "localrtpport", p)) {
            s->local_rtpport = FUNC23(buf, NULL, 10);
        }
        if (FUNC4(buf, sizeof(buf), "localrtcpport", p)) {
            s->local_rtcpport = FUNC23(buf, NULL, 10);
        }
        if (FUNC4(buf, sizeof(buf), "pkt_size", p)) {
            s->pkt_size = FUNC23(buf, NULL, 10);
        }
        if (FUNC4(buf, sizeof(buf), "connect", p)) {
            s->connect = FUNC23(buf, NULL, 10);
        }
        if (FUNC4(buf, sizeof(buf), "write_to_source", p)) {
            s->write_to_source = FUNC23(buf, NULL, 10);
        }
        if (FUNC4(buf, sizeof(buf), "dscp", p)) {
            s->dscp = FUNC23(buf, NULL, 10);
        }
        if (FUNC4(buf, sizeof(buf), "sources", p)) {
            FUNC8(include_sources, buf, sizeof(include_sources));
            FUNC12(h, buf, &s->filters);
        } else {
            FUNC12(h, s->sources, &s->filters);
            sources = s->sources;
        }
        if (FUNC4(buf, sizeof(buf), "block", p)) {
            FUNC8(exclude_sources, buf, sizeof(exclude_sources));
            FUNC11(h, buf, &s->filters);
        } else {
            FUNC11(h, s->block, &s->filters);
            block = s->block;
        }
    }

    if (s->fec_options_str) {
        p = s->fec_options_str;

        if (!(fec_protocol = FUNC6(&p, "="))) {
            FUNC7(h, AV_LOG_ERROR, "Failed to parse the FEC protocol value\n");
            goto fail;
        }
        if (FUNC21(fec_protocol, "prompeg")) {
            FUNC7(h, AV_LOG_ERROR, "Unsupported FEC protocol %s\n", fec_protocol);
            goto fail;
        }

        p = s->fec_options_str + FUNC22(fec_protocol);
        while (*p && *p == '=') p++;

        if (FUNC2(&fec_opts, p, "=", ":", 0) < 0) {
            FUNC7(h, AV_LOG_ERROR, "Failed to parse the FEC options\n");
            goto fail;
        }
        if (s->ttl > 0) {
            FUNC19(buf, sizeof (buf), "%d", s->ttl);
            FUNC3(&fec_opts, "ttl", buf, 0);
        }
    }

    for (i = 0; i < max_retry_count; i++) {
        FUNC10(s, buf, sizeof(buf),
                      hostname, rtp_port, s->local_rtpport,
                      sources, block);
        if (FUNC18(&s->rtp_hd, buf, flags, &h->interrupt_callback,
                                 NULL, h->protocol_whitelist, h->protocol_blacklist, h) < 0)
            goto fail;
        s->local_rtpport = FUNC13(s->rtp_hd);
        if(s->local_rtpport == 65535) {
            s->local_rtpport = -1;
            continue;
        }
        rtcpflags = flags | AVIO_FLAG_WRITE;
        if (s->local_rtcpport < 0) {
            s->local_rtcpport = s->local_rtpport + 1;
            FUNC10(s, buf, sizeof(buf),
                          hostname, s->rtcp_port, s->local_rtcpport,
                          sources, block);
            if (FUNC18(&s->rtcp_hd, buf, rtcpflags,
                                     &h->interrupt_callback, NULL,
                                     h->protocol_whitelist, h->protocol_blacklist, h) < 0) {
                s->local_rtpport = s->local_rtcpport = -1;
                continue;
            }
            break;
        }
        FUNC10(s, buf, sizeof(buf),
                      hostname, s->rtcp_port, s->local_rtcpport,
                      sources, block);
        if (FUNC18(&s->rtcp_hd, buf, rtcpflags, &h->interrupt_callback,
                                 NULL, h->protocol_whitelist, h->protocol_blacklist, h) < 0)
            goto fail;
        break;
    }

    s->fec_hd = NULL;
    if (fec_protocol) {
        FUNC14(buf, sizeof(buf), fec_protocol, NULL, hostname, rtp_port, NULL);
        if (FUNC18(&s->fec_hd, buf, flags, &h->interrupt_callback,
                             &fec_opts, h->protocol_whitelist, h->protocol_blacklist, h) < 0)
            goto fail;
    }

    /* just to ease handle access. XXX: need to suppress direct handle
       access */
    s->rtp_fd = FUNC17(s->rtp_hd);
    s->rtcp_fd = FUNC17(s->rtcp_hd);

    h->max_packet_size = s->rtp_hd->max_packet_size;
    h->is_streamed = 1;

    FUNC5(fec_protocol);
    FUNC1(&fec_opts);

    return 0;

 fail:
    if (s->rtp_hd)
        FUNC15(s->rtp_hd);
    if (s->rtcp_hd)
        FUNC15(s->rtcp_hd);
    FUNC16(&s->fec_hd);
    FUNC5(fec_protocol);
    FUNC1(&fec_opts);
    return FUNC0(EIO);
}