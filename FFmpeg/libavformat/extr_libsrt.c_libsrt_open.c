
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int buf ;
struct TYPE_5__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_6__ {void* streamid; void* smoother; int transtype; void* messageapi; void* minversion; void* lossmaxttl; void* rcvbuf; void* sndbuf; int mode; void* payload_size; void* connect_timeout; void* nakreport; void* tlpktdrop; void* peerlatency; void* rcvlatency; void* latency; void* oheadbw; void* inputbw; void* iptos; void* ipttl; void* ffs; void* mss; int passphrase; void* pbkeylen; void* maxbw; } ;
typedef TYPE_2__ SRTContext ;


 int AVERROR (int ) ;
 int AVERROR_UNKNOWN ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int SRTT_FILE ;
 int SRTT_LIVE ;
 int SRT_MODE_CALLER ;
 int SRT_MODE_LISTENER ;
 int SRT_MODE_RENDEZVOUS ;
 scalar_t__ av_find_info_tag (char*,int,char*,char const*) ;
 int av_freep (void**) ;
 void* av_strdup (char*) ;
 int av_strndup (char*,int ) ;
 int libsrt_setup (TYPE_1__*,char const*,int) ;
 scalar_t__ srt_startup () ;
 char* strchr (char const*,char) ;
 int strcmp (char*,char*) ;
 int strlen (char*) ;
 void* strtol (char*,int *,int) ;
 void* strtoll (char*,int *,int) ;

__attribute__((used)) static int libsrt_open(URLContext *h, const char *uri, int flags)
{
    SRTContext *s = h->priv_data;
    const char * p;
    char buf[256];
    int ret = 0;

    if (srt_startup() < 0) {
        return AVERROR_UNKNOWN;
    }


    p = strchr(uri, '?');
    if (p) {
        if (av_find_info_tag(buf, sizeof(buf), "maxbw", p)) {
            s->maxbw = strtoll(buf, ((void*)0), 0);
        }
        if (av_find_info_tag(buf, sizeof(buf), "pbkeylen", p)) {
            s->pbkeylen = strtol(buf, ((void*)0), 10);
        }
        if (av_find_info_tag(buf, sizeof(buf), "passphrase", p)) {
            s->passphrase = av_strndup(buf, strlen(buf));
        }
        if (av_find_info_tag(buf, sizeof(buf), "mss", p)) {
            s->mss = strtol(buf, ((void*)0), 10);
        }
        if (av_find_info_tag(buf, sizeof(buf), "ffs", p)) {
            s->ffs = strtol(buf, ((void*)0), 10);
        }
        if (av_find_info_tag(buf, sizeof(buf), "ipttl", p)) {
            s->ipttl = strtol(buf, ((void*)0), 10);
        }
        if (av_find_info_tag(buf, sizeof(buf), "iptos", p)) {
            s->iptos = strtol(buf, ((void*)0), 10);
        }
        if (av_find_info_tag(buf, sizeof(buf), "inputbw", p)) {
            s->inputbw = strtoll(buf, ((void*)0), 10);
        }
        if (av_find_info_tag(buf, sizeof(buf), "oheadbw", p)) {
            s->oheadbw = strtoll(buf, ((void*)0), 10);
        }
        if (av_find_info_tag(buf, sizeof(buf), "latency", p)) {
            s->latency = strtol(buf, ((void*)0), 10);
        }
        if (av_find_info_tag(buf, sizeof(buf), "tsbpddelay", p)) {
            s->latency = strtol(buf, ((void*)0), 10);
        }
        if (av_find_info_tag(buf, sizeof(buf), "rcvlatency", p)) {
            s->rcvlatency = strtol(buf, ((void*)0), 10);
        }
        if (av_find_info_tag(buf, sizeof(buf), "peerlatency", p)) {
            s->peerlatency = strtol(buf, ((void*)0), 10);
        }
        if (av_find_info_tag(buf, sizeof(buf), "tlpktdrop", p)) {
            s->tlpktdrop = strtol(buf, ((void*)0), 10);
        }
        if (av_find_info_tag(buf, sizeof(buf), "nakreport", p)) {
            s->nakreport = strtol(buf, ((void*)0), 10);
        }
        if (av_find_info_tag(buf, sizeof(buf), "connect_timeout", p)) {
            s->connect_timeout = strtol(buf, ((void*)0), 10);
        }
        if (av_find_info_tag(buf, sizeof(buf), "payload_size", p) ||
            av_find_info_tag(buf, sizeof(buf), "pkt_size", p)) {
            s->payload_size = strtol(buf, ((void*)0), 10);
        }
        if (av_find_info_tag(buf, sizeof(buf), "mode", p)) {
            if (!strcmp(buf, "caller")) {
                s->mode = SRT_MODE_CALLER;
            } else if (!strcmp(buf, "listener")) {
                s->mode = SRT_MODE_LISTENER;
            } else if (!strcmp(buf, "rendezvous")) {
                s->mode = SRT_MODE_RENDEZVOUS;
            } else {
                return AVERROR(EIO);
            }
        }
        if (av_find_info_tag(buf, sizeof(buf), "sndbuf", p)) {
            s->sndbuf = strtol(buf, ((void*)0), 10);
        }
        if (av_find_info_tag(buf, sizeof(buf), "rcvbuf", p)) {
            s->rcvbuf = strtol(buf, ((void*)0), 10);
        }
        if (av_find_info_tag(buf, sizeof(buf), "lossmaxttl", p)) {
            s->lossmaxttl = strtol(buf, ((void*)0), 10);
        }
        if (av_find_info_tag(buf, sizeof(buf), "minversion", p)) {
            s->minversion = strtol(buf, ((void*)0), 0);
        }
        if (av_find_info_tag(buf, sizeof(buf), "streamid", p)) {
            av_freep(&s->streamid);
            s->streamid = av_strdup(buf);
            if (!s->streamid) {
                ret = AVERROR(ENOMEM);
                goto err;
            }
        }
        if (av_find_info_tag(buf, sizeof(buf), "smoother", p)) {
            av_freep(&s->smoother);
            s->smoother = av_strdup(buf);
            if(!s->smoother) {
                ret = AVERROR(ENOMEM);
                goto err;
            }
        }
        if (av_find_info_tag(buf, sizeof(buf), "messageapi", p)) {
            s->messageapi = strtol(buf, ((void*)0), 10);
        }
        if (av_find_info_tag(buf, sizeof(buf), "transtype", p)) {
            if (!strcmp(buf, "live")) {
                s->transtype = SRTT_LIVE;
            } else if (!strcmp(buf, "file")) {
                s->transtype = SRTT_FILE;
            } else {
                ret = AVERROR(EINVAL);
                goto err;
            }
        }
    }
    return libsrt_setup(h, uri, flags);
err:
    av_freep(&s->smoother);
    av_freep(&s->streamid);
    return ret;
}
