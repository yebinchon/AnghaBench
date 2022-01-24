#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct timeval {int dummy; } ;
struct addrinfo {int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_addr; struct addrinfo* ai_next; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; } ;
struct TYPE_8__ {int flags; int fd; } ;
typedef  TYPE_1__ redisContext ;
typedef  int /*<<< orphan*/  hints ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_INET6 ; 
 scalar_t__ EHOSTUNREACH ; 
 scalar_t__ EINPROGRESS ; 
 int REDIS_BLOCK ; 
 int REDIS_CONNECTED ; 
 int REDIS_ERR ; 
 int /*<<< orphan*/  REDIS_ERR_OTHER ; 
 int REDIS_OK ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (struct addrinfo*) ; 
 char* FUNC4 (int) ; 
 int FUNC5 (char const*,char*,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC6 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int FUNC8 (TYPE_1__*,struct timeval const*) ; 
 int FUNC9 (TYPE_1__*,int) ; 
 int FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,...) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC13 (scalar_t__) ; 

__attribute__((used)) static int FUNC14(redisContext *c, const char *addr, int port,
                                   const struct timeval *timeout,
                                   const char *source_addr) {
    int s, rv;
    char _port[6];  /* strlen("65535"); */
    struct addrinfo hints, *servinfo, *bservinfo, *p, *b;
    int blocking = (c->flags & REDIS_BLOCK);

    FUNC11(_port, 6, "%d", port);
    FUNC6(&hints,0,sizeof(hints));
    hints.ai_family = AF_INET;
    hints.ai_socktype = SOCK_STREAM;

    /* Try with IPv6 if no IPv4 address was found. We do it in this order since
     * in a Redis client you can't afford to test if you have IPv6 connectivity
     * as this would add latency to every connect. Otherwise a more sensible
     * route could be: Use IPv6 if both addresses are available and there is IPv6
     * connectivity. */
    if ((rv = FUNC5(addr,_port,&hints,&servinfo)) != 0) {
         hints.ai_family = AF_INET6;
         if ((rv = FUNC5(addr,_port,&hints,&servinfo)) != 0) {
            FUNC0(c,REDIS_ERR_OTHER,FUNC4(rv));
            return REDIS_ERR;
        }
    }
    for (p = servinfo; p != NULL; p = p->ai_next) {
        if ((s = FUNC12(p->ai_family,p->ai_socktype,p->ai_protocol)) == -1)
            continue;

        c->fd = s;
        if (FUNC9(c,0) != REDIS_OK)
            goto error;
        if (source_addr) {
            int bound = 0;
            /* Using getaddrinfo saves us from self-determining IPv4 vs IPv6 */
            if ((rv = FUNC5(source_addr, NULL, &hints, &bservinfo)) != 0) {
                char buf[128];
                FUNC11(buf,sizeof(buf),"Can't get addr: %s",FUNC4(rv));
                FUNC0(c,REDIS_ERR_OTHER,buf);
                goto error;
            }
            for (b = bservinfo; b != NULL; b = b->ai_next) {
                if (FUNC1(s,b->ai_addr,b->ai_addrlen) != -1) {
                    bound = 1;
                    break;
                }
            }
            FUNC3(bservinfo);
            if (!bound) {
                char buf[128];
                FUNC11(buf,sizeof(buf),"Can't bind socket: %s",FUNC13(errno));
                FUNC0(c,REDIS_ERR_OTHER,buf);
                goto error;
            }
        }
        if (FUNC2(s,p->ai_addr,p->ai_addrlen) == -1) {
            if (errno == EHOSTUNREACH) {
                FUNC7(c);
                continue;
            } else if (errno == EINPROGRESS && !blocking) {
                /* This is ok. */
            } else {
                if (FUNC8(c,timeout) != REDIS_OK)
                    goto error;
            }
        }
        if (blocking && FUNC9(c,1) != REDIS_OK)
            goto error;
        if (FUNC10(c) != REDIS_OK)
            goto error;

        c->flags |= REDIS_CONNECTED;
        rv = REDIS_OK;
        goto end;
    }
    if (p == NULL) {
        char buf[128];
        FUNC11(buf,sizeof(buf),"Can't create socket: %s",FUNC13(errno));
        FUNC0(c,REDIS_ERR_OTHER,buf);
        goto error;
    }

error:
    rv = REDIS_ERR;
end:
    FUNC3(servinfo);
    return rv;  // Need to return REDIS_OK if alright
}