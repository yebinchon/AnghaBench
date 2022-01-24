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
typedef  int /*<<< orphan*/  URLContext ;
typedef  int /*<<< orphan*/  SRT_SOCKOPT ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int*) ; 

__attribute__((used)) static int FUNC4(URLContext *h, int fd, SRT_SOCKOPT optname, const char * optnamestr, void * optval, int * optlen)
{
    if (FUNC3(fd, 0, optname, optval, optlen) < 0) {
        FUNC1(h, AV_LOG_ERROR, "failed to get option %s on socket: %s\n", optnamestr, FUNC2());
        return FUNC0(EIO);
    }
    return 0;
}