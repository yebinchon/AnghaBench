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
struct TYPE_4__ {char const* label; } ;
typedef  TYPE_1__ Stmt ;
typedef  int /*<<< orphan*/  SrcPos ;

/* Variables and functions */
 int /*<<< orphan*/  STMT_GOTO ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

Stmt *FUNC1(SrcPos pos, const char *label) {
    Stmt *s = FUNC0(STMT_GOTO, pos);
    s->label = label;
    return s;
}