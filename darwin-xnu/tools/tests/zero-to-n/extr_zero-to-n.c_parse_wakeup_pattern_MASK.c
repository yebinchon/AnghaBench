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
typedef  int /*<<< orphan*/  wake_type_t ;

/* Variables and functions */
 int /*<<< orphan*/  EX_USAGE ; 
 int /*<<< orphan*/  WAKE_BROADCAST_ONESEM ; 
 int /*<<< orphan*/  WAKE_BROADCAST_PERTHREAD ; 
 int /*<<< orphan*/  WAKE_CHAIN ; 
 int /*<<< orphan*/  WAKE_HOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 

__attribute__((used)) static wake_type_t
FUNC2(const char *str) 
{
	if (FUNC1(str, "chain") == 0) {
		return WAKE_CHAIN;
	} else if (FUNC1(str, "hop") == 0) {
		return WAKE_HOP;
	} else if (FUNC1(str, "broadcast-single-sem") == 0) {
		return WAKE_BROADCAST_ONESEM;
	} else if (FUNC1(str, "broadcast-per-thread") == 0) {
		return WAKE_BROADCAST_PERTHREAD;
	} else {
		FUNC0(EX_USAGE, "Invalid wakeup pattern \"%s\"", str);
	}
}