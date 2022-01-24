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
struct TYPE_6__ {scalar_t__ kind; } ;
typedef  TYPE_1__ Type ;

/* Variables and functions */
 scalar_t__ KIND_DOUBLE ; 
 scalar_t__ KIND_FLOAT ; 
 int /*<<< orphan*/  SAVE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 char* FUNC1 (char*,int) ; 
 char* FUNC2 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 

__attribute__((used)) static void FUNC5(Type *ty, int off) {
    SAVE;
    if (ty->kind == KIND_FLOAT) {
        FUNC0("movss #xmm0, %d(#rbp)", off);
    } else if (ty->kind == KIND_DOUBLE) {
        FUNC0("movsd #xmm0, %d(#rbp)", off);
    } else {
        FUNC3(ty);
        char *reg = FUNC2(ty, 'a');
        char *addr = FUNC1("%d(%%rbp)", off);
        FUNC4(ty, addr);
        FUNC0("mov #%s, %s", reg, addr);
    }
}