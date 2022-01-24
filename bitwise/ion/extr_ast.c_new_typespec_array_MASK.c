#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * num_elems; struct TYPE_5__* base; } ;
typedef  TYPE_1__ Typespec ;
typedef  int /*<<< orphan*/  SrcPos ;
typedef  int /*<<< orphan*/  Expr ;

/* Variables and functions */
 int /*<<< orphan*/  TYPESPEC_ARRAY ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

Typespec *FUNC1(SrcPos pos, Typespec *base, Expr *num_elems) {
    Typespec *t = FUNC0(TYPESPEC_ARRAY, pos);
    t->base = base;
    t->num_elems = num_elems;
    return t;
}