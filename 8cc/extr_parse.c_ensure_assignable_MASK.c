#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ kind; } ;
typedef  TYPE_1__ Type ;

/* Variables and functions */
 scalar_t__ KIND_PTR ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,TYPE_1__*) ; 
 char* FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC4(Type *totype, Type *fromtype) {
    if ((FUNC1(totype) || totype->kind == KIND_PTR) &&
        (FUNC1(fromtype) || fromtype->kind == KIND_PTR))
        return;
    if (FUNC2(totype, fromtype))
        return;
    FUNC0("incompatible kind: <%s> <%s>", FUNC3(totype), FUNC3(fromtype));
}