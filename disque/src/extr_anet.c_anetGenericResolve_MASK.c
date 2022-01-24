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
struct sockaddr_in6 {int /*<<< orphan*/  sin6_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_addr; } ;
struct addrinfo {scalar_t__ ai_family; scalar_t__ ai_addr; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_flags; } ;
typedef  int /*<<< orphan*/  hints ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 scalar_t__ AF_UNSPEC ; 
 int /*<<< orphan*/  AI_NUMERICHOST ; 
 int ANET_ERR ; 
 int ANET_IP_ONLY ; 
 int ANET_OK ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (char*,int /*<<< orphan*/ *,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 

int FUNC6(char *err, char *host, char *ipbuf, size_t ipbuf_len,
                       int flags)
{
    struct addrinfo hints, *info;
    int rv;

    FUNC5(&hints,0,sizeof(hints));
    if (flags & ANET_IP_ONLY) hints.ai_flags = AI_NUMERICHOST;
    hints.ai_family = AF_UNSPEC;
    hints.ai_socktype = SOCK_STREAM;  /* specify socktype to avoid dups */

    if ((rv = FUNC3(host, NULL, &hints, &info)) != 0) {
        FUNC0(err, "%s", FUNC2(rv));
        return ANET_ERR;
    }
    if (info->ai_family == AF_INET) {
        struct sockaddr_in *sa = (struct sockaddr_in *)info->ai_addr;
        FUNC4(AF_INET, &(sa->sin_addr), ipbuf, ipbuf_len);
    } else {
        struct sockaddr_in6 *sa = (struct sockaddr_in6 *)info->ai_addr;
        FUNC4(AF_INET6, &(sa->sin6_addr), ipbuf, ipbuf_len);
    }

    FUNC1(info);
    return ANET_OK;
}