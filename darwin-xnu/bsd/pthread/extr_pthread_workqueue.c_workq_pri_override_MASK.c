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
typedef  int /*<<< orphan*/  thread_qos_t ;
struct uu_workq_policy {int /*<<< orphan*/  qos_bucket; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uu_workq_policy) ; 

__attribute__((used)) static inline thread_qos_t
FUNC2(struct uu_workq_policy req)
{
	return FUNC0(FUNC1(req), req.qos_bucket);
}