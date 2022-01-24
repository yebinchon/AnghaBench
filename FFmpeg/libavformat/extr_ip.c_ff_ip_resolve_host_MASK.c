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
struct addrinfo {int ai_socktype; int ai_family; int ai_flags; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  sport ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,char*,char const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (char const*,char const*,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int) ; 

struct addrinfo *FUNC4(void *log_ctx,
                                    const char *hostname, int port,
                                    int type, int family, int flags)
{
    struct addrinfo hints = { 0 }, *res = 0;
    int error;
    char sport[16];
    const char *node = 0, *service = "0";

    if (port > 0) {
        FUNC3(sport, sizeof(sport), "%d", port);
        service = sport;
    }
    if ((hostname) && (hostname[0] != '\0') && (hostname[0] != '?')) {
        node = hostname;
    }
    hints.ai_socktype = type;
    hints.ai_family   = family;
    hints.ai_flags    = flags;
    if ((error = FUNC2(node, service, &hints, &res))) {
        res = NULL;
        FUNC0(log_ctx, AV_LOG_ERROR, "getaddrinfo(%s, %s): %s\n",
               node ? node : "unknown",
               service,
               FUNC1(error));
    }

    return res;
}