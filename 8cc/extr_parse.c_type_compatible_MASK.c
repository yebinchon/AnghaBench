#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ kind; struct TYPE_9__* ptr; } ;
typedef  TYPE_1__ Type ;

/* Variables and functions */
 scalar_t__ KIND_STRUCT ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*,TYPE_1__*) ; 

__attribute__((used)) static bool FUNC3(Type *a, Type *b) {
    if (a->kind == KIND_STRUCT)
        return FUNC1(a, b);
    if (a->kind != b->kind)
        return false;
    if (a->ptr && b->ptr)
        return FUNC3(a->ptr, b->ptr);
    if (FUNC0(a) && FUNC0(b))
        return FUNC2(a, b);
    return true;
}