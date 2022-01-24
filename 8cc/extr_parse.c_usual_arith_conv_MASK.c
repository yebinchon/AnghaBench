#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ kind; scalar_t__ size; scalar_t__ usig; } ;
typedef  TYPE_1__ Type ;
struct TYPE_12__ {scalar_t__ size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 TYPE_5__* type_int ; 

__attribute__((used)) static Type *FUNC5(Type *t, Type *u) {
    FUNC0(FUNC2(t));
    FUNC0(FUNC2(u));
    if (t->kind < u->kind) {
        // Make t the larger type
        Type *tmp = t;
        t = u;
        u = tmp;
    }
    if (FUNC3(t))
        return t;
    FUNC0(FUNC4(t) && t->size >= type_int->size);
    FUNC0(FUNC4(u) && u->size >= type_int->size);
    if (t->size > u->size)
        return t;
    FUNC0(t->size == u->size);
    if (t->usig == u->usig)
        return t;
    Type *r = FUNC1(t);
    r->usig = true;
    return r;
}