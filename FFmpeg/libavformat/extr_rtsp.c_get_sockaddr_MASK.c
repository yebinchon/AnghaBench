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
struct sockaddr_storage {int dummy; } ;
struct addrinfo {int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_addr; int /*<<< orphan*/  ai_flags; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  AI_NUMERICHOST ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ *,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC5 (struct sockaddr_storage*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(AVFormatContext *s,
                        const char *buf, struct sockaddr_storage *sock)
{
    struct addrinfo hints = { 0 }, *ai = NULL;
    int ret;

    hints.ai_flags = AI_NUMERICHOST;
    if ((ret = FUNC4(buf, NULL, &hints, &ai))) {
        FUNC1(s, AV_LOG_ERROR, "getaddrinfo(%s): %s\n",
               buf,
               FUNC3(ret));
        return -1;
    }
    FUNC5(sock, ai->ai_addr, FUNC0(sizeof(*sock), ai->ai_addrlen));
    FUNC2(ai);
    return 0;
}