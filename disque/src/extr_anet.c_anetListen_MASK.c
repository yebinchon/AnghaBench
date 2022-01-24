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
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  socklen_t ;

/* Variables and functions */
 int ANET_ERR ; 
 int ANET_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(char *err, int s, struct sockaddr *sa, socklen_t len, int backlog) {
    if (FUNC1(s,sa,len) == -1) {
        FUNC0(err, "bind: %s", FUNC4(errno));
        FUNC2(s);
        return ANET_ERR;
    }

    if (FUNC3(s, backlog) == -1) {
        FUNC0(err, "listen: %s", FUNC4(errno));
        FUNC2(s);
        return ANET_ERR;
    }
    return ANET_OK;
}