#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ kind; int /*<<< orphan*/  base; } ;
typedef  TYPE_1__ Type ;

/* Variables and functions */
 scalar_t__ TYPE_ARRAY ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (TYPE_1__*) ; 

Type *FUNC2(Type *type) {
    type = FUNC1(type);
    if (type->kind == TYPE_ARRAY) {
        type = FUNC0(type->base);
    }
    return type;
}