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
struct os_refcnt {int /*<<< orphan*/  ref_count; } ;
typedef  int /*<<< orphan*/  os_ref_count_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  memory_order_relaxed ; 

__attribute__((used)) static inline os_ref_count_t
FUNC1(struct os_refcnt *rc)
{
	return FUNC0(&rc->ref_count, memory_order_relaxed);
}