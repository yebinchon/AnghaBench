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
struct TYPE_5__ {scalar_t__ kind; int /*<<< orphan*/  base; } ;
typedef  TYPE_1__ Type ;

/* Variables and functions */
 scalar_t__ TYPE_PTR ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

Type *FUNC2(Type *type) {
    if (type->kind == TYPE_PTR) {
        type = FUNC0(FUNC1(type->base));
    }
    return type;
}