#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  buf ;
struct TYPE_5__ {TYPE_2__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_6__ {void* streamid; void* smoother; int /*<<< orphan*/  transtype; void* messageapi; void* minversion; void* lossmaxttl; void* rcvbuf; void* sndbuf; int /*<<< orphan*/  mode; void* payload_size; void* connect_timeout; void* nakreport; void* tlpktdrop; void* peerlatency; void* rcvlatency; void* latency; void* oheadbw; void* inputbw; void* iptos; void* ipttl; void* ffs; void* mss; int /*<<< orphan*/  passphrase; void* pbkeylen; void* maxbw; } ;
typedef  TYPE_2__ SRTContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_UNKNOWN ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  SRTT_FILE ; 
 int /*<<< orphan*/  SRTT_LIVE ; 
 int /*<<< orphan*/  SRT_MODE_CALLER ; 
 int /*<<< orphan*/  SRT_MODE_LISTENER ; 
 int /*<<< orphan*/  SRT_MODE_RENDEZVOUS ; 
 scalar_t__ FUNC1 (char*,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (void**) ; 
 void* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*,char const*,int) ; 
 scalar_t__ FUNC6 () ; 
 char* FUNC7 (char const*,char) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 void* FUNC10 (char*,int /*<<< orphan*/ *,int) ; 
 void* FUNC11 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC12(URLContext *h, const char *uri, int flags)
{
    SRTContext *s = h->priv_data;
    const char * p;
    char buf[256];
    int ret = 0;

    if (FUNC6() < 0) {
        return AVERROR_UNKNOWN;
    }

    /* SRT options (srt/srt.h) */
    p = FUNC7(uri, '?');
    if (p) {
        if (FUNC1(buf, sizeof(buf), "maxbw", p)) {
            s->maxbw = FUNC11(buf, NULL, 0);
        }
        if (FUNC1(buf, sizeof(buf), "pbkeylen", p)) {
            s->pbkeylen = FUNC10(buf, NULL, 10);
        }
        if (FUNC1(buf, sizeof(buf), "passphrase", p)) {
            s->passphrase = FUNC4(buf, FUNC9(buf));
        }
        if (FUNC1(buf, sizeof(buf), "mss", p)) {
            s->mss = FUNC10(buf, NULL, 10);
        }
        if (FUNC1(buf, sizeof(buf), "ffs", p)) {
            s->ffs = FUNC10(buf, NULL, 10);
        }
        if (FUNC1(buf, sizeof(buf), "ipttl", p)) {
            s->ipttl = FUNC10(buf, NULL, 10);
        }
        if (FUNC1(buf, sizeof(buf), "iptos", p)) {
            s->iptos = FUNC10(buf, NULL, 10);
        }
        if (FUNC1(buf, sizeof(buf), "inputbw", p)) {
            s->inputbw = FUNC11(buf, NULL, 10);
        }
        if (FUNC1(buf, sizeof(buf), "oheadbw", p)) {
            s->oheadbw = FUNC11(buf, NULL, 10);
        }
        if (FUNC1(buf, sizeof(buf), "latency", p)) {
            s->latency = FUNC10(buf, NULL, 10);
        }
        if (FUNC1(buf, sizeof(buf), "tsbpddelay", p)) {
            s->latency = FUNC10(buf, NULL, 10);
        }
        if (FUNC1(buf, sizeof(buf), "rcvlatency", p)) {
            s->rcvlatency = FUNC10(buf, NULL, 10);
        }
        if (FUNC1(buf, sizeof(buf), "peerlatency", p)) {
            s->peerlatency = FUNC10(buf, NULL, 10);
        }
        if (FUNC1(buf, sizeof(buf), "tlpktdrop", p)) {
            s->tlpktdrop = FUNC10(buf, NULL, 10);
        }
        if (FUNC1(buf, sizeof(buf), "nakreport", p)) {
            s->nakreport = FUNC10(buf, NULL, 10);
        }
        if (FUNC1(buf, sizeof(buf), "connect_timeout", p)) {
            s->connect_timeout = FUNC10(buf, NULL, 10);
        }
        if (FUNC1(buf, sizeof(buf), "payload_size", p) ||
            FUNC1(buf, sizeof(buf), "pkt_size", p)) {
            s->payload_size = FUNC10(buf, NULL, 10);
        }
        if (FUNC1(buf, sizeof(buf), "mode", p)) {
            if (!FUNC8(buf, "caller")) {
                s->mode = SRT_MODE_CALLER;
            } else if (!FUNC8(buf, "listener")) {
                s->mode = SRT_MODE_LISTENER;
            } else if (!FUNC8(buf, "rendezvous")) {
                s->mode = SRT_MODE_RENDEZVOUS;
            } else {
                return FUNC0(EIO);
            }
        }
        if (FUNC1(buf, sizeof(buf), "sndbuf", p)) {
            s->sndbuf = FUNC10(buf, NULL, 10);
        }
        if (FUNC1(buf, sizeof(buf), "rcvbuf", p)) {
            s->rcvbuf = FUNC10(buf, NULL, 10);
        }
        if (FUNC1(buf, sizeof(buf), "lossmaxttl", p)) {
            s->lossmaxttl = FUNC10(buf, NULL, 10);
        }
        if (FUNC1(buf, sizeof(buf), "minversion", p)) {
            s->minversion = FUNC10(buf, NULL, 0);
        }
        if (FUNC1(buf, sizeof(buf), "streamid", p)) {
            FUNC2(&s->streamid);
            s->streamid = FUNC3(buf);
            if (!s->streamid) {
                ret = FUNC0(ENOMEM);
                goto err;
            }
        }
        if (FUNC1(buf, sizeof(buf), "smoother", p)) {
            FUNC2(&s->smoother);
            s->smoother = FUNC3(buf);
            if(!s->smoother) {
                ret = FUNC0(ENOMEM);
                goto err;
            }
        }
        if (FUNC1(buf, sizeof(buf), "messageapi", p)) {
            s->messageapi = FUNC10(buf, NULL, 10);
        }
        if (FUNC1(buf, sizeof(buf), "transtype", p)) {
            if (!FUNC8(buf, "live")) {
                s->transtype = SRTT_LIVE;
            } else if (!FUNC8(buf, "file")) {
                s->transtype = SRTT_FILE;
            } else {
                ret = FUNC0(EINVAL);
                goto err;
            }
        }
    }
    return FUNC5(h, uri, flags);
err:
    FUNC2(&s->smoother);
    FUNC2(&s->streamid);
    return ret;
}