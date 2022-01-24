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
typedef  int /*<<< orphan*/  STREAM ;

/* Variables and functions */
 int /*<<< orphan*/  RDP_CAPLEN_ACTIVATE ; 
 int /*<<< orphan*/  RDP_CAPSET_ACTIVATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(STREAM s)
{
	FUNC1(s, RDP_CAPSET_ACTIVATE);
	FUNC1(s, RDP_CAPLEN_ACTIVATE);

	FUNC0(s, 0);	/* Help key */
	FUNC0(s, 0);	/* Help index key */
	FUNC0(s, 0);	/* Extended help key */
	FUNC0(s, 0);	/* Window activate */
}