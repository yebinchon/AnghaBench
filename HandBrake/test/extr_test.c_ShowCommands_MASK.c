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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void FUNC1()
{
    FUNC0(stdout, "\nCommands:\n");
    FUNC0(stdout, " [h]elp    Show this message\n");
    FUNC0(stdout, " [q]uit    Exit HandBrakeCLI\n");
    FUNC0(stdout, " [p]ause   Pause encoding\n");
    FUNC0(stdout, " [r]esume  Resume encoding\n");
}