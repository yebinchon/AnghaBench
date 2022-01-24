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
struct TYPE_3__ {scalar_t__ kind; int size; } ;
typedef  TYPE_1__ Type ;
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
 scalar_t__ KIND_FUNC ; 
 scalar_t__ KIND_VOID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  type_ulong ; 

__attribute__((used)) static Node *FUNC3() {
    Type *ty = FUNC2();
    // Sizeof on void or function type is GNU extension
    int size = (ty->kind == KIND_VOID || ty->kind == KIND_FUNC) ? 1 : ty->size;
    FUNC0(0 <= size);
    return FUNC1(type_ulong, size);
}