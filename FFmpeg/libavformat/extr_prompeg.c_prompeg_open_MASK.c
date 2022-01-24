#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hostname ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_8__ {int /*<<< orphan*/  max_packet_size; int /*<<< orphan*/  protocol_blacklist; int /*<<< orphan*/  protocol_whitelist; int /*<<< orphan*/  interrupt_callback; TYPE_2__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_10__ {int /*<<< orphan*/  max_packet_size; } ;
struct TYPE_9__ {int l; int d; scalar_t__ ttl; int init; TYPE_4__* fec_row_hd; TYPE_4__* fec_col_hd; } ;
typedef  TYPE_2__ PrompegContext ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_INFO ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EIO ; 
 int UINT16_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__**) ; 
 scalar_t__ FUNC7 (TYPE_4__**,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,scalar_t__) ; 

__attribute__((used)) static int FUNC9(URLContext *h, const char *uri, int flags) {
    PrompegContext *s = h->priv_data;
    AVDictionary *udp_opts = NULL;
    int rtp_port;
    char hostname[256];
    char buf[1024];

    s->fec_col_hd = NULL;
    s->fec_row_hd = NULL;

    if (s->l * s->d > 100) {
        FUNC3(h, AV_LOG_ERROR, "L * D must be <= 100\n");
        return FUNC0(EINVAL);
    }

    FUNC4(NULL, 0, NULL, 0, hostname, sizeof (hostname), &rtp_port,
            NULL, 0, uri);

    if (rtp_port < 1 || rtp_port > UINT16_MAX - 4) {
        FUNC3(h, AV_LOG_ERROR, "Invalid RTP base port %d\n", rtp_port);
        return FUNC0(EINVAL);
    }

    if (s->ttl > 0) {
        FUNC8(buf, sizeof (buf), "%d", s->ttl);
        FUNC2(&udp_opts, "ttl", buf, 0);
    }

    FUNC5(buf, sizeof (buf), "udp", NULL, hostname, rtp_port + 2, NULL);
    if (FUNC7(&s->fec_col_hd, buf, flags, &h->interrupt_callback,
            &udp_opts, h->protocol_whitelist, h->protocol_blacklist, h) < 0)
        goto fail;
    FUNC5(buf, sizeof (buf), "udp", NULL, hostname, rtp_port + 4, NULL);
    if (FUNC7(&s->fec_row_hd, buf, flags, &h->interrupt_callback,
            &udp_opts, h->protocol_whitelist, h->protocol_blacklist, h) < 0)
        goto fail;

    h->max_packet_size = s->fec_col_hd->max_packet_size;
    s->init = 1;

    FUNC1(&udp_opts);
    FUNC3(h, AV_LOG_INFO, "ProMPEG CoP#3-R2 FEC L=%d D=%d\n", s->l, s->d);
    return 0;

fail:
    FUNC6(&s->fec_col_hd);
    FUNC6(&s->fec_row_hd);
    FUNC1(&udp_opts);
    return FUNC0(EIO);
}