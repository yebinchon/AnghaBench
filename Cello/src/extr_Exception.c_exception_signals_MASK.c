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
 int /*<<< orphan*/  Exception_Signal ; 
 int /*<<< orphan*/  SIGABRT ; 
 int /*<<< orphan*/  SIGFPE ; 
 int /*<<< orphan*/  SIGILL ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGSEGV ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(void) {
  FUNC0(SIGABRT, Exception_Signal);
  FUNC0(SIGFPE,  Exception_Signal);
  FUNC0(SIGILL,  Exception_Signal);
  FUNC0(SIGINT,  Exception_Signal);
  FUNC0(SIGSEGV, Exception_Signal);
  FUNC0(SIGTERM, Exception_Signal);
}