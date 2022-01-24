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
typedef  int /*<<< orphan*/  Vector ;
struct TYPE_3__ {int len; int size; } ;
typedef  TYPE_1__ Type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  type_char ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(Vector *inits, Type *ty, char *p, int off) {
    if (ty->len == -1)
        ty->len = ty->size = FUNC2(p) + 1;
    int i = 0;
    for (; i < ty->len && *p; i++)
        FUNC3(inits, FUNC0(FUNC1(type_char, *p++), type_char, off + i));
    for (; i < ty->len; i++)
        FUNC3(inits, FUNC0(FUNC1(type_char, 0), type_char, off + i));
}