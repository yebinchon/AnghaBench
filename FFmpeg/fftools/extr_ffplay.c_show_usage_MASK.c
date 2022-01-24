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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  program_name ; 

__attribute__((used)) static void FUNC1(void)
{
    FUNC0(NULL, AV_LOG_INFO, "Simple media player\n");
    FUNC0(NULL, AV_LOG_INFO, "usage: %s [options] input_file\n", program_name);
    FUNC0(NULL, AV_LOG_INFO, "\n");
}