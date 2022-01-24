#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ size; int /*<<< orphan*/  typeid; } ;
typedef  TYPE_1__ Type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

void FUNC4(Type *type) {
    if (type->size == 0 || FUNC1(type)) {
        FUNC0("TYPEID0(%d, %s)", type->typeid, FUNC3(type));
    } else {
        FUNC0("TYPEID(%d, %s, %s)", type->typeid, FUNC3(type), FUNC2(type, ""));
    }
}