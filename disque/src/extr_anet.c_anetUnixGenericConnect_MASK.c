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
struct sockaddr_un {int /*<<< orphan*/  sun_path; int /*<<< orphan*/  sun_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  sa ;

/* Variables and functions */
 int /*<<< orphan*/  AF_LOCAL ; 
 int ANET_CONNECT_NONBLOCK ; 
 int ANET_ERR ; 
 scalar_t__ ANET_OK ; 
 scalar_t__ EINPROGRESS ; 
 int FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int,struct sockaddr*,int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 

int FUNC7(char *err, char *path, int flags)
{
    int s;
    struct sockaddr_un sa;

    if ((s = FUNC0(err,AF_LOCAL)) == ANET_ERR)
        return ANET_ERR;

    sa.sun_family = AF_LOCAL;
    FUNC6(sa.sun_path,path,sizeof(sa.sun_path)-1);
    if (flags & ANET_CONNECT_NONBLOCK) {
        if (FUNC1(err,s) != ANET_OK)
            return ANET_ERR;
    }
    if (FUNC4(s,(struct sockaddr*)&sa,sizeof(sa)) == -1) {
        if (errno == EINPROGRESS &&
            flags & ANET_CONNECT_NONBLOCK)
            return s;

        FUNC2(err, "connect: %s", FUNC5(errno));
        FUNC3(s);
        return ANET_ERR;
    }
    return s;
}