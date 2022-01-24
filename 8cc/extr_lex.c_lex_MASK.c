#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_6__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Vector ;
struct TYPE_7__ {scalar_t__ kind; int space; int bol; } ;
typedef  TYPE_1__ Token ;
struct TYPE_8__ {int column; } ;

/* Variables and functions */
 scalar_t__ TSPACE ; 
 int /*<<< orphan*/ * buffers ; 
 TYPE_6__* FUNC0 () ; 
 TYPE_1__* FUNC1 () ; 
 TYPE_1__* eof_token ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 

Token *FUNC5() {
    Vector *buf = FUNC4(buffers);
    if (FUNC2(buf) > 0)
        return FUNC3(buf);
    if (FUNC2(buffers) > 1)
        return eof_token;
    bool bol = (FUNC0()->column == 1);
    Token *tok = FUNC1();
    while (tok->kind == TSPACE) {
        tok = FUNC1();
        tok->space = true;
    }
    tok->bol = bol;
    return tok;
}