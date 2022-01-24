#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  cost_dist_; int /*<<< orphan*/  literal_costs_; } ;
typedef  TYPE_1__ ZopfliCostModel ;
typedef  int /*<<< orphan*/  MemoryManager ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(MemoryManager* m, ZopfliCostModel* self) {
  FUNC0(m, self->literal_costs_);
  FUNC0(m, self->cost_dist_);
}