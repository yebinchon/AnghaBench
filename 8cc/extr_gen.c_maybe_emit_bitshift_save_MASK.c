#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ bitsize; int bitoff; } ;
typedef  TYPE_1__ Type ;

/* Variables and functions */
 int /*<<< orphan*/  SAVE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(Type *ty, char *addr) {
    SAVE;
    if (ty->bitsize <= 0)
        return;
    FUNC3("rcx");
    FUNC3("rdi");
    FUNC0("mov $0x%lx, #rdi", (1 << (long)ty->bitsize) - 1);
    FUNC0("and #rdi, #rax");
    FUNC0("shl $%d, #rax", ty->bitoff);
    FUNC0("mov %s, #%s", addr, FUNC1(ty, 'c'));
    FUNC0("mov $0x%lx, #rdi", ~(((1 << (long)ty->bitsize) - 1) << ty->bitoff));
    FUNC0("and #rdi, #rcx");
    FUNC0("or #rcx, #rax");
    FUNC2("rdi");
    FUNC2("rcx");
}