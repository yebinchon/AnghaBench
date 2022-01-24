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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC1(const char *argv0, int ret)
{
    FUNC0(stderr, "%s [-b bytespersec] [-d duration] [-oi <options>] [-oo <options>] [-v] input_url output_url\n", argv0);
    FUNC0(stderr, "<options>: AVOptions expressed as key=value, :-separated\n");
    return ret;
}