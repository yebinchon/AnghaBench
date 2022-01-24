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
 int /*<<< orphan*/  SIGBUS ; 
 int /*<<< orphan*/  SIGFPE ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGILL ; 
 int /*<<< orphan*/  SIGIOT ; 
 int /*<<< orphan*/  SIGQUIT ; 
 int /*<<< orphan*/  SIGSEGV ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIGTRAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  signal_handler ; 

void FUNC1(void)
{
  FUNC0(SIGHUP, signal_handler);
  FUNC0(SIGQUIT, signal_handler);
  FUNC0(SIGILL, signal_handler);
  FUNC0(SIGTRAP, signal_handler);
  FUNC0(SIGIOT, signal_handler);
  FUNC0(SIGBUS, signal_handler);
  FUNC0(SIGFPE, signal_handler);
  FUNC0(SIGSEGV, signal_handler);
  FUNC0(SIGTERM, signal_handler);
}