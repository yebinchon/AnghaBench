
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int hostname ;
typedef int buf ;
struct TYPE_8__ {int max_packet_size; int protocol_blacklist; int protocol_whitelist; int interrupt_callback; TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_10__ {int max_packet_size; } ;
struct TYPE_9__ {int l; int d; scalar_t__ ttl; int init; TYPE_4__* fec_row_hd; TYPE_4__* fec_col_hd; } ;
typedef TYPE_2__ PrompegContext ;
typedef int AVDictionary ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int AV_LOG_INFO ;
 int EINVAL ;
 int EIO ;
 int UINT16_MAX ;
 int av_dict_free (int **) ;
 int av_dict_set (int **,char*,char*,int ) ;
 int av_log (TYPE_1__*,int ,char*,...) ;
 int av_url_split (int *,int ,int *,int ,char*,int,int*,int *,int ,char const*) ;
 int ff_url_join (char*,int,char*,int *,char*,int,int *) ;
 int ffurl_closep (TYPE_4__**) ;
 scalar_t__ ffurl_open_whitelist (TYPE_4__**,char*,int,int *,int **,int ,int ,TYPE_1__*) ;
 int snprintf (char*,int,char*,scalar_t__) ;

__attribute__((used)) static int prompeg_open(URLContext *h, const char *uri, int flags) {
    PrompegContext *s = h->priv_data;
    AVDictionary *udp_opts = ((void*)0);
    int rtp_port;
    char hostname[256];
    char buf[1024];

    s->fec_col_hd = ((void*)0);
    s->fec_row_hd = ((void*)0);

    if (s->l * s->d > 100) {
        av_log(h, AV_LOG_ERROR, "L * D must be <= 100\n");
        return AVERROR(EINVAL);
    }

    av_url_split(((void*)0), 0, ((void*)0), 0, hostname, sizeof (hostname), &rtp_port,
            ((void*)0), 0, uri);

    if (rtp_port < 1 || rtp_port > UINT16_MAX - 4) {
        av_log(h, AV_LOG_ERROR, "Invalid RTP base port %d\n", rtp_port);
        return AVERROR(EINVAL);
    }

    if (s->ttl > 0) {
        snprintf(buf, sizeof (buf), "%d", s->ttl);
        av_dict_set(&udp_opts, "ttl", buf, 0);
    }

    ff_url_join(buf, sizeof (buf), "udp", ((void*)0), hostname, rtp_port + 2, ((void*)0));
    if (ffurl_open_whitelist(&s->fec_col_hd, buf, flags, &h->interrupt_callback,
            &udp_opts, h->protocol_whitelist, h->protocol_blacklist, h) < 0)
        goto fail;
    ff_url_join(buf, sizeof (buf), "udp", ((void*)0), hostname, rtp_port + 4, ((void*)0));
    if (ffurl_open_whitelist(&s->fec_row_hd, buf, flags, &h->interrupt_callback,
            &udp_opts, h->protocol_whitelist, h->protocol_blacklist, h) < 0)
        goto fail;

    h->max_packet_size = s->fec_col_hd->max_packet_size;
    s->init = 1;

    av_dict_free(&udp_opts);
    av_log(h, AV_LOG_INFO, "ProMPEG CoP#3-R2 FEC L=%d D=%d\n", s->l, s->d);
    return 0;

fail:
    ffurl_closep(&s->fec_col_hd);
    ffurl_closep(&s->fec_row_hd);
    av_dict_free(&udp_opts);
    return AVERROR(EIO);
}
