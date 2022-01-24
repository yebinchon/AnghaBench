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
 scalar_t__ KIND_BOOL ; 
 scalar_t__ KIND_DOUBLE ; 
 scalar_t__ KIND_FLOAT ; 
 scalar_t__ KIND_LDOUBLE ; 
 int /*<<< orphan*/  SAVE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC5(Type *to, Type *from) {
    SAVE;
    if (FUNC4(from) && to->kind == KIND_FLOAT)
        FUNC0("cvtsi2ss #eax, #xmm0");
    else if (FUNC4(from) && to->kind == KIND_DOUBLE)
        FUNC0("cvtsi2sd #eax, #xmm0");
    else if (from->kind == KIND_FLOAT && to->kind == KIND_DOUBLE)
        FUNC0("cvtps2pd #xmm0, #xmm0");
    else if ((from->kind == KIND_DOUBLE || from->kind == KIND_LDOUBLE) && to->kind == KIND_FLOAT)
        FUNC0("cvtpd2ps #xmm0, #xmm0");
    else if (to->kind == KIND_BOOL)
        FUNC2(from);
    else if (FUNC4(from) && FUNC4(to))
        FUNC1(from);
    else if (FUNC4(to))
        FUNC3(from);
}