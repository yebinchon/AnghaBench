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

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_INFO ; 
 int INDENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  log_callback_help ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

int FUNC2(void *optctx, const char *opt, const char *arg)
{
    FUNC0(log_callback_help);
    FUNC1      (INDENT|0, AV_LOG_INFO);

    return 0;
}