#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {size_t num_items; int /*<<< orphan*/  items; int /*<<< orphan*/  kind; int /*<<< orphan*/  pos; } ;
typedef  int /*<<< orphan*/  SrcPos ;
typedef  int /*<<< orphan*/  AggregateKind ;
typedef  int /*<<< orphan*/  AggregateItem ;
typedef  TYPE_1__ Aggregate ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int) ; 

Aggregate *FUNC2(SrcPos pos, AggregateKind kind, AggregateItem *items, size_t num_items) {
    Aggregate *aggregate = FUNC1(sizeof(Aggregate));
    aggregate->pos = pos;
    aggregate->kind = kind;
    aggregate->items = FUNC0(items);
    aggregate->num_items = num_items;
    return aggregate;
}