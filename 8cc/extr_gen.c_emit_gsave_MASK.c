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
 scalar_t__ KIND_ARRAY ; 
 int /*<<< orphan*/  SAVE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 
 char* FUNC2 (char*,char*,int) ; 
 char* FUNC3 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 

__attribute__((used)) static void FUNC6(char *varname, Type *ty, int off) {
    SAVE;
    FUNC0(ty->kind != KIND_ARRAY);
    FUNC4(ty);
    char *reg = FUNC3(ty, 'a');
    char *addr = FUNC2("%s+%d(%%rip)", varname, off);
    FUNC5(ty, addr);
    FUNC1("mov #%s, %s", reg, addr);
}