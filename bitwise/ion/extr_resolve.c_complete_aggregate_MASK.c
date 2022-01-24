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
struct TYPE_8__ {TYPE_1__* sym; } ;
typedef  TYPE_2__ Type ;
struct TYPE_7__ {int /*<<< orphan*/  decl; } ;
typedef  int /*<<< orphan*/  Aggregate ;

/* Variables and functions */
 TYPE_2__* FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

Type *FUNC2(Type *type, Aggregate *aggregate) {
    return FUNC0(type, aggregate, type->sym && FUNC1(type->sym->decl));
}