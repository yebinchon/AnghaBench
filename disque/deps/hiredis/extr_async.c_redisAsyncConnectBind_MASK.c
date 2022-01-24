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
typedef  int /*<<< orphan*/  redisContext ;
typedef  int /*<<< orphan*/  redisAsyncContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,int,char const*) ; 

redisAsyncContext *FUNC3(const char *ip, int port,
                                         const char *source_addr) {
    redisContext *c = FUNC2(ip,port,source_addr);
    redisAsyncContext *ac = FUNC1(c);
    FUNC0(ac);
    return ac;
}