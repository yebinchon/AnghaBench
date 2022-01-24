#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_in6 {scalar_t__ sin6_port; } ;
struct addrinfo {scalar_t__ ai_family; int /*<<< orphan*/  ai_addrlen; scalar_t__ ai_addr; struct addrinfo* ai_next; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_flags; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  proto ;
typedef  int /*<<< orphan*/  portstr ;
typedef  int /*<<< orphan*/  path ;
typedef  int /*<<< orphan*/  hostname ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_10__ {int rw_timeout; int is_streamed; TYPE_2__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_11__ {int open_timeout; int listen; scalar_t__ rw_timeout; int fd; void* listen_timeout; } ;
typedef  TYPE_2__ TCPContext ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 scalar_t__ AF_UNSPEC ; 
 int /*<<< orphan*/  AI_PASSIVE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 scalar_t__ FUNC1 (char*,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int*,char*,int,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 int FUNC6 (struct addrinfo*,int,int,TYPE_1__*,int*,int /*<<< orphan*/  (*) (TYPE_2__*,int),TYPE_2__*) ; 
 int FUNC7 (int,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC8 (int,scalar_t__,int /*<<< orphan*/ ,void*,TYPE_1__*) ; 
 int FUNC9 () ; 
 int FUNC10 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int FUNC13 (char*,char*,struct addrinfo*,struct addrinfo**) ; 
 scalar_t__ FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (char*,int,char*,int) ; 
 char* FUNC16 (char const*,char) ; 
 scalar_t__ FUNC17 (char*,char*) ; 
 void* FUNC18 (char*,char**,int) ; 

__attribute__((used)) static int FUNC19(URLContext *h, const char *uri, int flags)
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

    FUNC3(proto, sizeof(proto), NULL, 0, hostname, sizeof(hostname),
        &port, path, sizeof(path), uri);
    if (FUNC17(proto, "tcp"))
        return FUNC0(EINVAL);
    if (port <= 0 || port >= 65536) {
        FUNC2(h, AV_LOG_ERROR, "Port missing in uri\n");
        return FUNC0(EINVAL);
    }
    p = FUNC16(uri, '?');
    if (p) {
        if (FUNC1(buf, sizeof(buf), "listen", p)) {
            char *endptr = NULL;
            s->listen = FUNC18(buf, &endptr, 10);
            /* assume if no digits were found it is a request to enable it */
            if (buf == endptr)
                s->listen = 1;
        }
        if (FUNC1(buf, sizeof(buf), "timeout", p)) {
            s->rw_timeout = FUNC18(buf, NULL, 10);
        }
        if (FUNC1(buf, sizeof(buf), "listen_timeout", p)) {
            s->listen_timeout = FUNC18(buf, NULL, 10);
        }
    }
    if (s->rw_timeout >= 0) {
        s->open_timeout =
        h->rw_timeout   = s->rw_timeout;
    }
    hints.ai_family = AF_UNSPEC;
    hints.ai_socktype = SOCK_STREAM;
    FUNC15(portstr, sizeof(portstr), "%d", port);
    if (s->listen)
        hints.ai_flags |= AI_PASSIVE;
    if (!hostname[0])
        ret = FUNC13(NULL, portstr, &hints, &ai);
    else
        ret = FUNC13(hostname, portstr, &hints, &ai);
    if (ret) {
        FUNC2(h, AV_LOG_ERROR,
               "Failed to resolve hostname %s: %s\n",
               hostname, FUNC12(ret));
        return FUNC0(EIO);
    }

    cur_ai = ai;

#if HAVE_STRUCT_SOCKADDR_IN6
    // workaround for IOS9 getaddrinfo in IPv6 only network use hardcode IPv4 address can not resolve port number.
    if (cur_ai->ai_family == AF_INET6){
        struct sockaddr_in6 * sockaddr_v6 = (struct sockaddr_in6 *)cur_ai->ai_addr;
        if (!sockaddr_v6->sin6_port){
            sockaddr_v6->sin6_port = htons(port);
        }
    }
#endif

    if (s->listen > 0) {
        while (cur_ai && fd < 0) {
            fd = FUNC10(cur_ai->ai_family,
                           cur_ai->ai_socktype,
                           cur_ai->ai_protocol);
            if (fd < 0) {
                ret = FUNC9();
                cur_ai = cur_ai->ai_next;
            }
        }
        if (fd < 0)
            goto fail1;
        FUNC5(s, fd);
    }

    if (s->listen == 2) {
        // multi-client
        if ((ret = FUNC7(fd, cur_ai->ai_addr, cur_ai->ai_addrlen)) < 0)
            goto fail1;
    } else if (s->listen == 1) {
        // single client
        if ((ret = FUNC8(fd, cur_ai->ai_addr, cur_ai->ai_addrlen,
                                  s->listen_timeout, h)) < 0)
            goto fail1;
        // Socket descriptor already closed here. Safe to overwrite to client one.
        fd = ret;
    } else {
        ret = FUNC6(ai, s->open_timeout / 1000, 3, h, &fd, customize_fd, s);
        if (ret < 0)
            goto fail1;
    }

    h->is_streamed = 1;
    s->fd = fd;

    FUNC11(ai);
    return 0;

 fail1:
    if (fd >= 0)
        FUNC4(fd);
    FUNC11(ai);
    return ret;
}