
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct sockaddr_in6 {scalar_t__ sin6_port; } ;
struct addrinfo {scalar_t__ ai_family; int ai_addrlen; scalar_t__ ai_addr; struct addrinfo* ai_next; int ai_protocol; int ai_socktype; int ai_flags; int member_0; } ;
typedef int proto ;
typedef int portstr ;
typedef int path ;
typedef int hostname ;
typedef int buf ;
struct TYPE_10__ {int rw_timeout; int is_streamed; TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_11__ {int open_timeout; int listen; scalar_t__ rw_timeout; int fd; void* listen_timeout; } ;
typedef TYPE_2__ TCPContext ;


 scalar_t__ AF_INET6 ;
 scalar_t__ AF_UNSPEC ;
 int AI_PASSIVE ;
 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int EIO ;
 int SOCK_STREAM ;
 scalar_t__ av_find_info_tag (char*,int,char*,char const*) ;
 int av_log (TYPE_1__*,int ,char*,...) ;
 int av_url_split (char*,int,int *,int ,char*,int,int*,char*,int,char const*) ;
 int closesocket (int) ;
 int customize_fd (TYPE_2__*,int) ;
 int ff_connect_parallel (struct addrinfo*,int,int,TYPE_1__*,int*,int (*) (TYPE_2__*,int),TYPE_2__*) ;
 int ff_listen (int,scalar_t__,int ) ;
 int ff_listen_bind (int,scalar_t__,int ,void*,TYPE_1__*) ;
 int ff_neterrno () ;
 int ff_socket (scalar_t__,int ,int ) ;
 int freeaddrinfo (struct addrinfo*) ;
 int gai_strerror (int) ;
 int getaddrinfo (char*,char*,struct addrinfo*,struct addrinfo**) ;
 scalar_t__ htons (int) ;
 int snprintf (char*,int,char*,int) ;
 char* strchr (char const*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 void* strtol (char*,char**,int) ;

__attribute__((used)) static int tcp_open(URLContext *h, const char *uri, int flags)
{
    struct addrinfo hints = { 0 }, *ai, *cur_ai;
    int port, fd = -1;
    TCPContext *s = h->priv_data;
    const char *p;
    char buf[256];
    int ret;
    char hostname[1024],proto[1024],path[1024];
    char portstr[10];
    s->open_timeout = 5000000;

    av_url_split(proto, sizeof(proto), ((void*)0), 0, hostname, sizeof(hostname),
        &port, path, sizeof(path), uri);
    if (strcmp(proto, "tcp"))
        return AVERROR(EINVAL);
    if (port <= 0 || port >= 65536) {
        av_log(h, AV_LOG_ERROR, "Port missing in uri\n");
        return AVERROR(EINVAL);
    }
    p = strchr(uri, '?');
    if (p) {
        if (av_find_info_tag(buf, sizeof(buf), "listen", p)) {
            char *endptr = ((void*)0);
            s->listen = strtol(buf, &endptr, 10);

            if (buf == endptr)
                s->listen = 1;
        }
        if (av_find_info_tag(buf, sizeof(buf), "timeout", p)) {
            s->rw_timeout = strtol(buf, ((void*)0), 10);
        }
        if (av_find_info_tag(buf, sizeof(buf), "listen_timeout", p)) {
            s->listen_timeout = strtol(buf, ((void*)0), 10);
        }
    }
    if (s->rw_timeout >= 0) {
        s->open_timeout =
        h->rw_timeout = s->rw_timeout;
    }
    hints.ai_family = AF_UNSPEC;
    hints.ai_socktype = SOCK_STREAM;
    snprintf(portstr, sizeof(portstr), "%d", port);
    if (s->listen)
        hints.ai_flags |= AI_PASSIVE;
    if (!hostname[0])
        ret = getaddrinfo(((void*)0), portstr, &hints, &ai);
    else
        ret = getaddrinfo(hostname, portstr, &hints, &ai);
    if (ret) {
        av_log(h, AV_LOG_ERROR,
               "Failed to resolve hostname %s: %s\n",
               hostname, gai_strerror(ret));
        return AVERROR(EIO);
    }

    cur_ai = ai;
    if (s->listen > 0) {
        while (cur_ai && fd < 0) {
            fd = ff_socket(cur_ai->ai_family,
                           cur_ai->ai_socktype,
                           cur_ai->ai_protocol);
            if (fd < 0) {
                ret = ff_neterrno();
                cur_ai = cur_ai->ai_next;
            }
        }
        if (fd < 0)
            goto fail1;
        customize_fd(s, fd);
    }

    if (s->listen == 2) {

        if ((ret = ff_listen(fd, cur_ai->ai_addr, cur_ai->ai_addrlen)) < 0)
            goto fail1;
    } else if (s->listen == 1) {

        if ((ret = ff_listen_bind(fd, cur_ai->ai_addr, cur_ai->ai_addrlen,
                                  s->listen_timeout, h)) < 0)
            goto fail1;

        fd = ret;
    } else {
        ret = ff_connect_parallel(ai, s->open_timeout / 1000, 3, h, &fd, customize_fd, s);
        if (ret < 0)
            goto fail1;
    }

    h->is_streamed = 1;
    s->fd = fd;

    freeaddrinfo(ai);
    return 0;

 fail1:
    if (fd >= 0)
        closesocket(fd);
    freeaddrinfo(ai);
    return ret;
}
