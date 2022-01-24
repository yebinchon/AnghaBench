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
 int /*<<< orphan*/  FUNC0 (char*) ; 

__attribute__((used)) static void FUNC1(void)
{
    FUNC0("Usage: particles [-bfhs]\n");
    FUNC0("Options:\n");
    FUNC0(" -f   Run in full screen\n");
    FUNC0(" -h   Display this help\n");
    FUNC0(" -s   Run program as single thread (default is to use two threads)\n");
    FUNC0("\n");
    FUNC0("Program runtime controls:\n");
    FUNC0(" W    Toggle wireframe mode\n");
    FUNC0(" Esc  Exit program\n");
}