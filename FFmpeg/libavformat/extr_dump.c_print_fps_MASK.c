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
typedef  int uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,double,char const*) ; 
 int FUNC1 (double) ; 

__attribute__((used)) static void FUNC2(double d, const char *postfix)
{
    uint64_t v = FUNC1(d * 100);
    if (!v)
        FUNC0(NULL, AV_LOG_INFO, "%1.4f %s", d, postfix);
    else if (v % 100)
        FUNC0(NULL, AV_LOG_INFO, "%3.2f %s", d, postfix);
    else if (v % (100 * 1000))
        FUNC0(NULL, AV_LOG_INFO, "%1.0f %s", d, postfix);
    else
        FUNC0(NULL, AV_LOG_INFO, "%1.0fk %s", d / 1000, postfix);
}