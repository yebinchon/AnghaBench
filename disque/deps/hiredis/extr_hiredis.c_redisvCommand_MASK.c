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
typedef  int /*<<< orphan*/  va_list ;
typedef  int /*<<< orphan*/  redisContext ;

/* Variables and functions */
 scalar_t__ REDIS_OK ; 
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 

void *FUNC2(redisContext *c, const char *format, va_list ap) {
    if (FUNC1(c,format,ap) != REDIS_OK)
        return NULL;
    return FUNC0(c);
}