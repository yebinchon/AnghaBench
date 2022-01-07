
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_10__ ;


typedef int url ;
struct sockaddr_storage {scalar_t__ ss_family; } ;
struct sockaddr_in6 {int sin6_addr; } ;
struct sockaddr_in {int sin_addr; } ;
struct sockaddr {int dummy; } ;
struct in_addr {int dummy; } ;
struct in6_addr {int dummy; } ;
struct addrinfo {scalar_t__ ai_family; int member_0; } ;
struct SAPState {int ann_size; int* ann; TYPE_1__* ann_fd; } ;
typedef int socklen_t ;
typedef int path ;
typedef int localaddr ;
typedef int host ;
typedef int buf ;
typedef int announce_addr ;
struct TYPE_20__ {int max_packet_size; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_22__ {int value; } ;
struct TYPE_21__ {int nb_streams; scalar_t__ start_time_realtime; int protocol_blacklist; int protocol_whitelist; int interrupt_callback; int metadata; TYPE_10__** streams; int url; struct SAPState* priv_data; } ;
struct TYPE_19__ {int time_base; TYPE_2__* priv_data; } ;
typedef TYPE_2__ AVFormatContext ;
typedef TYPE_3__ AVDictionaryEntry ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 scalar_t__ AF_UNSPEC ;
 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AVIO_FLAG_WRITE ;
 int AV_LOG_ERROR ;
 int AV_LOG_VERBOSE ;
 scalar_t__ AV_NOPTS_VALUE ;
 int AV_WB16 (int*,int ) ;
 int EIO ;
 int ENOMEM ;
 TYPE_3__* av_dict_get (int ,char*,int *,int ) ;
 int av_dict_set (int *,char*,int ,int ) ;
 scalar_t__ av_find_info_tag (char*,int,char*,char*) ;
 int av_free (TYPE_2__**) ;
 int av_freep (TYPE_2__***) ;
 int av_get_random_seed () ;
 scalar_t__ av_gettime () ;
 int av_log (TYPE_2__*,int ,char*,...) ;
 int* av_mallocz (int) ;
 TYPE_2__** av_mallocz_array (int,int) ;
 scalar_t__ av_sdp_create (TYPE_2__**,int,char*,int) ;
 char* av_strdup (char*) ;
 int av_strlcpy (char*,char*,int) ;
 int av_url_split (int *,int ,int *,int ,char*,int,int*,char*,int,int ) ;
 int ff_format_set_url (TYPE_2__*,char*) ;
 int ff_network_init () ;
 int ff_rtp_chain_mux_open (TYPE_2__**,TYPE_2__*,TYPE_10__*,TYPE_1__*,int ,int) ;
 int ff_url_join (char*,int,char*,int *,char*,int,char*,int) ;
 int ffurl_get_file_handle (TYPE_1__*) ;
 int ffurl_open_whitelist (TYPE_1__**,char*,int ,int *,int *,int ,int ,int *) ;
 int freeaddrinfo (struct addrinfo*) ;
 scalar_t__ getaddrinfo (char*,int *,struct addrinfo*,struct addrinfo**) ;
 scalar_t__ getsockname (int,struct sockaddr*,int*) ;
 int memcpy (int*,int *,int) ;
 int sap_write_close (TYPE_2__*) ;
 scalar_t__ strlen (char*) ;
 char* strrchr (char*,char) ;
 int strtol (char*,int *,int) ;

__attribute__((used)) static int sap_write_header(AVFormatContext *s)
{
    struct SAPState *sap = s->priv_data;
    char host[1024], path[1024], url[1024], announce_addr[50] = "";
    char *option_list;
    int port = 9875, base_port = 5004, i, pos = 0, same_port = 0, ttl = 255;
    AVFormatContext **contexts = ((void*)0);
    int ret = 0;
    struct sockaddr_storage localaddr;
    socklen_t addrlen = sizeof(localaddr);
    int udp_fd;
    AVDictionaryEntry* title = av_dict_get(s->metadata, "title", ((void*)0), 0);

    if (!ff_network_init())
        return AVERROR(EIO);


    av_url_split(((void*)0), 0, ((void*)0), 0, host, sizeof(host), &base_port,
                 path, sizeof(path), s->url);
    if (base_port < 0)
        base_port = 5004;


    option_list = strrchr(path, '?');
    if (option_list) {
        char buf[50];
        if (av_find_info_tag(buf, sizeof(buf), "announce_port", option_list)) {
            port = strtol(buf, ((void*)0), 10);
        }
        if (av_find_info_tag(buf, sizeof(buf), "same_port", option_list)) {
            same_port = strtol(buf, ((void*)0), 10);
        }
        if (av_find_info_tag(buf, sizeof(buf), "ttl", option_list)) {
            ttl = strtol(buf, ((void*)0), 10);
        }
        if (av_find_info_tag(buf, sizeof(buf), "announce_addr", option_list)) {
            av_strlcpy(announce_addr, buf, sizeof(announce_addr));
        }
    }

    if (!announce_addr[0]) {
        struct addrinfo hints = { 0 }, *ai = ((void*)0);
        hints.ai_family = AF_UNSPEC;
        if (getaddrinfo(host, ((void*)0), &hints, &ai)) {
            av_log(s, AV_LOG_ERROR, "Unable to resolve %s\n", host);
            ret = AVERROR(EIO);
            goto fail;
        }
        if (ai->ai_family == AF_INET) {

            av_strlcpy(announce_addr, "224.2.127.254", sizeof(announce_addr));







        } else {
            freeaddrinfo(ai);
            av_log(s, AV_LOG_ERROR, "Host %s resolved to unsupported "
                                    "address family\n", host);
            ret = AVERROR(EIO);
            goto fail;
        }
        freeaddrinfo(ai);
    }

    contexts = av_mallocz_array(s->nb_streams, sizeof(AVFormatContext*));
    if (!contexts) {
        ret = AVERROR(ENOMEM);
        goto fail;
    }

    if (s->start_time_realtime == 0 || s->start_time_realtime == AV_NOPTS_VALUE)
        s->start_time_realtime = av_gettime();
    for (i = 0; i < s->nb_streams; i++) {
        URLContext *fd;
        char *new_url;

        ff_url_join(url, sizeof(url), "rtp", ((void*)0), host, base_port,
                    "?ttl=%d", ttl);
        if (!same_port)
            base_port += 2;
        ret = ffurl_open_whitelist(&fd, url, AVIO_FLAG_WRITE,
                                   &s->interrupt_callback, ((void*)0),
                                   s->protocol_whitelist, s->protocol_blacklist, ((void*)0));
        if (ret) {
            ret = AVERROR(EIO);
            goto fail;
        }
        ret = ff_rtp_chain_mux_open(&contexts[i], s, s->streams[i], fd, 0, i);
        if (ret < 0)
            goto fail;
        s->streams[i]->priv_data = contexts[i];
        s->streams[i]->time_base = contexts[i]->streams[0]->time_base;
        new_url = av_strdup(url);
        if (!new_url) {
            ret = AVERROR(ENOMEM);
            goto fail;
        }
        ff_format_set_url(contexts[i], new_url);
    }

    if (s->nb_streams > 0 && title)
        av_dict_set(&contexts[0]->metadata, "title", title->value, 0);

    ff_url_join(url, sizeof(url), "udp", ((void*)0), announce_addr, port,
                "?ttl=%d&connect=1", ttl);
    ret = ffurl_open_whitelist(&sap->ann_fd, url, AVIO_FLAG_WRITE,
                               &s->interrupt_callback, ((void*)0),
                               s->protocol_whitelist, s->protocol_blacklist, ((void*)0));
    if (ret) {
        ret = AVERROR(EIO);
        goto fail;
    }

    udp_fd = ffurl_get_file_handle(sap->ann_fd);
    if (getsockname(udp_fd, (struct sockaddr*) &localaddr, &addrlen)) {
        ret = AVERROR(EIO);
        goto fail;
    }
    if (localaddr.ss_family != AF_INET



        ) {
        av_log(s, AV_LOG_ERROR, "Unsupported protocol family\n");
        ret = AVERROR(EIO);
        goto fail;
    }
    sap->ann_size = 8192;
    sap->ann = av_mallocz(sap->ann_size);
    if (!sap->ann) {
        ret = AVERROR(EIO);
        goto fail;
    }
    sap->ann[pos] = (1 << 5);




    pos++;
    sap->ann[pos++] = 0;
    AV_WB16(&sap->ann[pos], av_get_random_seed());
    pos += 2;
    if (localaddr.ss_family == AF_INET) {
        memcpy(&sap->ann[pos], &((struct sockaddr_in*)&localaddr)->sin_addr,
               sizeof(struct in_addr));
        pos += sizeof(struct in_addr);






    }

    av_strlcpy(&sap->ann[pos], "application/sdp", sap->ann_size - pos);
    pos += strlen(&sap->ann[pos]) + 1;

    if (av_sdp_create(contexts, s->nb_streams, &sap->ann[pos],
                      sap->ann_size - pos)) {
        ret = AVERROR_INVALIDDATA;
        goto fail;
    }
    av_freep(&contexts);
    av_log(s, AV_LOG_VERBOSE, "SDP:\n%s\n", &sap->ann[pos]);
    pos += strlen(&sap->ann[pos]);
    sap->ann_size = pos;

    if (sap->ann_size > sap->ann_fd->max_packet_size) {
        av_log(s, AV_LOG_ERROR, "Announcement too large to send in one "
                                "packet\n");
        goto fail;
    }

    return 0;

fail:
    av_free(contexts);
    sap_write_close(s);
    return ret;
}
