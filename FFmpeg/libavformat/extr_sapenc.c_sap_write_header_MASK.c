#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  url ;
struct sockaddr_storage {scalar_t__ ss_family; } ;
struct sockaddr_in6 {int /*<<< orphan*/  sin6_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_addr; } ;
struct sockaddr {int dummy; } ;
struct in_addr {int dummy; } ;
struct in6_addr {int dummy; } ;
struct addrinfo {scalar_t__ ai_family; int /*<<< orphan*/  member_0; } ;
struct SAPState {int ann_size; int* ann; TYPE_1__* ann_fd; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  path ;
typedef  int /*<<< orphan*/  localaddr ;
typedef  int /*<<< orphan*/  host ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  announce_addr ;
struct TYPE_20__ {int max_packet_size; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_22__ {int /*<<< orphan*/  value; } ;
struct TYPE_21__ {int nb_streams; scalar_t__ start_time_realtime; int /*<<< orphan*/  protocol_blacklist; int /*<<< orphan*/  protocol_whitelist; int /*<<< orphan*/  interrupt_callback; int /*<<< orphan*/  metadata; TYPE_10__** streams; int /*<<< orphan*/  url; struct SAPState* priv_data; } ;
struct TYPE_19__ {int /*<<< orphan*/  time_base; TYPE_2__* priv_data; } ;
typedef  TYPE_2__ AVFormatContext ;
typedef  TYPE_3__ AVDictionaryEntry ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 scalar_t__ AF_UNSPEC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AVIO_FLAG_WRITE ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_VERBOSE ; 
 scalar_t__ AV_NOPTS_VALUE ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENOMEM ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__***) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,char*,...) ; 
 int* FUNC10 (int) ; 
 TYPE_2__** FUNC11 (int,int) ; 
 scalar_t__ FUNC12 (TYPE_2__**,int,char*,int) ; 
 char* FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int FUNC18 (TYPE_2__**,TYPE_2__*,TYPE_10__*,TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (char*,int,char*,int /*<<< orphan*/ *,char*,int,char*,int) ; 
 int FUNC20 (TYPE_1__*) ; 
 int FUNC21 (TYPE_1__**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (struct addrinfo*) ; 
 scalar_t__ FUNC23 (char*,int /*<<< orphan*/ *,struct addrinfo*,struct addrinfo**) ; 
 scalar_t__ FUNC24 (int,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC25 (int*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_2__*) ; 
 scalar_t__ FUNC27 (char*) ; 
 char* FUNC28 (char*,char) ; 
 int FUNC29 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC30(AVFormatContext *s)
{
    struct SAPState *sap = s->priv_data;
    char host[1024], path[1024], url[1024], announce_addr[50] = "";
    char *option_list;
    int port = 9875, base_port = 5004, i, pos = 0, same_port = 0, ttl = 255;
    AVFormatContext **contexts = NULL;
    int ret = 0;
    struct sockaddr_storage localaddr;
    socklen_t addrlen = sizeof(localaddr);
    int udp_fd;
    AVDictionaryEntry* title = FUNC2(s->metadata, "title", NULL, 0);

    if (!FUNC17())
        return FUNC0(EIO);

    /* extract hostname and port */
    FUNC15(NULL, 0, NULL, 0, host, sizeof(host), &base_port,
                 path, sizeof(path), s->url);
    if (base_port < 0)
        base_port = 5004;

    /* search for options */
    option_list = FUNC28(path, '?');
    if (option_list) {
        char buf[50];
        if (FUNC4(buf, sizeof(buf), "announce_port", option_list)) {
            port = FUNC29(buf, NULL, 10);
        }
        if (FUNC4(buf, sizeof(buf), "same_port", option_list)) {
            same_port = FUNC29(buf, NULL, 10);
        }
        if (FUNC4(buf, sizeof(buf), "ttl", option_list)) {
            ttl = FUNC29(buf, NULL, 10);
        }
        if (FUNC4(buf, sizeof(buf), "announce_addr", option_list)) {
            FUNC14(announce_addr, buf, sizeof(announce_addr));
        }
    }

    if (!announce_addr[0]) {
        struct addrinfo hints = { 0 }, *ai = NULL;
        hints.ai_family = AF_UNSPEC;
        if (FUNC23(host, NULL, &hints, &ai)) {
            FUNC9(s, AV_LOG_ERROR, "Unable to resolve %s\n", host);
            ret = FUNC0(EIO);
            goto fail;
        }
        if (ai->ai_family == AF_INET) {
            /* Also known as sap.mcast.net */
            FUNC14(announce_addr, "224.2.127.254", sizeof(announce_addr));
#if HAVE_STRUCT_SOCKADDR_IN6
        } else if (ai->ai_family == AF_INET6) {
            /* With IPv6, you can use the same destination in many different
             * multicast subnets, to choose how far you want it routed.
             * This one is intended to be routed globally. */
            av_strlcpy(announce_addr, "ff0e::2:7ffe", sizeof(announce_addr));
#endif
        } else {
            FUNC22(ai);
            FUNC9(s, AV_LOG_ERROR, "Host %s resolved to unsupported "
                                    "address family\n", host);
            ret = FUNC0(EIO);
            goto fail;
        }
        FUNC22(ai);
    }

    contexts = FUNC11(s->nb_streams, sizeof(AVFormatContext*));
    if (!contexts) {
        ret = FUNC0(ENOMEM);
        goto fail;
    }

    if (s->start_time_realtime == 0  ||  s->start_time_realtime == AV_NOPTS_VALUE)
        s->start_time_realtime = FUNC8();
    for (i = 0; i < s->nb_streams; i++) {
        URLContext *fd;
        char *new_url;

        FUNC19(url, sizeof(url), "rtp", NULL, host, base_port,
                    "?ttl=%d", ttl);
        if (!same_port)
            base_port += 2;
        ret = FUNC21(&fd, url, AVIO_FLAG_WRITE,
                                   &s->interrupt_callback, NULL,
                                   s->protocol_whitelist, s->protocol_blacklist, NULL);
        if (ret) {
            ret = FUNC0(EIO);
            goto fail;
        }
        ret = FUNC18(&contexts[i], s, s->streams[i], fd, 0, i);
        if (ret < 0)
            goto fail;
        s->streams[i]->priv_data = contexts[i];
        s->streams[i]->time_base = contexts[i]->streams[0]->time_base;
        new_url = FUNC13(url);
        if (!new_url) {
            ret = FUNC0(ENOMEM);
            goto fail;
        }
        FUNC16(contexts[i], new_url);
    }

    if (s->nb_streams > 0 && title)
        FUNC3(&contexts[0]->metadata, "title", title->value, 0);

    FUNC19(url, sizeof(url), "udp", NULL, announce_addr, port,
                "?ttl=%d&connect=1", ttl);
    ret = FUNC21(&sap->ann_fd, url, AVIO_FLAG_WRITE,
                               &s->interrupt_callback, NULL,
                               s->protocol_whitelist, s->protocol_blacklist, NULL);
    if (ret) {
        ret = FUNC0(EIO);
        goto fail;
    }

    udp_fd = FUNC20(sap->ann_fd);
    if (FUNC24(udp_fd, (struct sockaddr*) &localaddr, &addrlen)) {
        ret = FUNC0(EIO);
        goto fail;
    }
    if (localaddr.ss_family != AF_INET
#if HAVE_STRUCT_SOCKADDR_IN6
        && localaddr.ss_family != AF_INET6
#endif
        ) {
        FUNC9(s, AV_LOG_ERROR, "Unsupported protocol family\n");
        ret = FUNC0(EIO);
        goto fail;
    }
    sap->ann_size = 8192;
    sap->ann = FUNC10(sap->ann_size);
    if (!sap->ann) {
        ret = FUNC0(EIO);
        goto fail;
    }
    sap->ann[pos] = (1 << 5);
#if HAVE_STRUCT_SOCKADDR_IN6
    if (localaddr.ss_family == AF_INET6)
        sap->ann[pos] |= 0x10;
#endif
    pos++;
    sap->ann[pos++] = 0; /* Authentication length */
    FUNC1(&sap->ann[pos], FUNC7());
    pos += 2;
    if (localaddr.ss_family == AF_INET) {
        FUNC25(&sap->ann[pos], &((struct sockaddr_in*)&localaddr)->sin_addr,
               sizeof(struct in_addr));
        pos += sizeof(struct in_addr);
#if HAVE_STRUCT_SOCKADDR_IN6
    } else {
        memcpy(&sap->ann[pos], &((struct sockaddr_in6*)&localaddr)->sin6_addr,
               sizeof(struct in6_addr));
        pos += sizeof(struct in6_addr);
#endif
    }

    FUNC14(&sap->ann[pos], "application/sdp", sap->ann_size - pos);
    pos += FUNC27(&sap->ann[pos]) + 1;

    if (FUNC12(contexts, s->nb_streams, &sap->ann[pos],
                      sap->ann_size - pos)) {
        ret = AVERROR_INVALIDDATA;
        goto fail;
    }
    FUNC6(&contexts);
    FUNC9(s, AV_LOG_VERBOSE, "SDP:\n%s\n", &sap->ann[pos]);
    pos += FUNC27(&sap->ann[pos]);
    sap->ann_size = pos;

    if (sap->ann_size > sap->ann_fd->max_packet_size) {
        FUNC9(s, AV_LOG_ERROR, "Announcement too large to send in one "
                                "packet\n");
        goto fail;
    }

    return 0;

fail:
    FUNC5(contexts);
    FUNC26(s);
    return ret;
}