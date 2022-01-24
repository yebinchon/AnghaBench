#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct addrinfo {int ai_family; int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_addr; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; struct addrinfo* ai_next; int /*<<< orphan*/  ai_flags; } ;
typedef  int /*<<< orphan*/  hints ;

/* Variables and functions */
 int AF_INET6 ; 
 int /*<<< orphan*/  AI_PASSIVE ; 
 int ANET_ERR ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int FUNC0 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,...) ; 
 int FUNC2 (char*,int) ; 
 int FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (char*,char*,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC7 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,int) ; 
 int FUNC9 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(char *err, int port, char *bindaddr, int af, int backlog)
{
    int s, rv;
    char _port[6];  /* strlen("65535") */
    struct addrinfo hints, *servinfo, *p;

    FUNC8(_port,6,"%d",port);
    FUNC7(&hints,0,sizeof(hints));
    hints.ai_family = af;
    hints.ai_socktype = SOCK_STREAM;
    hints.ai_flags = AI_PASSIVE;    /* No effect if bindaddr != NULL */

    if ((rv = FUNC6(bindaddr,_port,&hints,&servinfo)) != 0) {
        FUNC1(err, "%s", FUNC5(rv));
        return ANET_ERR;
    }
    for (p = servinfo; p != NULL; p = p->ai_next) {
        if ((s = FUNC9(p->ai_family,p->ai_socktype,p->ai_protocol)) == -1)
            continue;

        if (af == AF_INET6 && FUNC3(err,s) == ANET_ERR) goto error;
        if (FUNC2(err,s) == ANET_ERR) goto error;
        if (FUNC0(err,s,p->ai_addr,p->ai_addrlen,backlog) == ANET_ERR) goto error;
        goto end;
    }
    if (p == NULL) {
        FUNC1(err, "unable to bind socket");
        goto error;
    }

error:
    s = ANET_ERR;
end:
    FUNC4(servinfo);
    return s;
}