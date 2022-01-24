#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ ulk_pid; scalar_t__ ulk_addr; } ;
struct TYPE_8__ {int ull_refcount; int /*<<< orphan*/  ull_bucket_index; int /*<<< orphan*/  ull_hash_link; TYPE_1__ ull_key; } ;
typedef  TYPE_2__ ull_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC7(ull_t *ull)
{
	FUNC2(ull);
	int refcount = --ull->ull_refcount;
	FUNC0(refcount == 0 ? (ull->ull_key.ulk_pid == 0 && ull->ull_key.ulk_addr == 0) : 1);
	FUNC6(ull);

	if (refcount > 0) {
		return;
	}

	FUNC3(ull->ull_bucket_index);
	FUNC1(&ull->ull_hash_link);
	FUNC4(ull->ull_bucket_index);

	FUNC5(ull);
}