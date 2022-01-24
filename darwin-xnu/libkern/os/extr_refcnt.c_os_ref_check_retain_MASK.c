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
struct os_refcnt {int dummy; } ;
typedef  int /*<<< orphan*/  os_ref_count_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct os_refcnt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct os_refcnt*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct os_refcnt *rc, os_ref_count_t count)
{
	FUNC0(rc, count);
	FUNC1(rc, count);
}