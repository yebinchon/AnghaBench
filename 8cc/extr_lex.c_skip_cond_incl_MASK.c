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
struct TYPE_7__ {scalar_t__ kind; int bol; int column; } ;
typedef  TYPE_1__ Token ;
struct TYPE_8__ {int column; } ;

/* Variables and functions */
 int EOF ; 
 scalar_t__ TIDENT ; 
 TYPE_6__* FUNC0 () ; 
 scalar_t__ FUNC1 (TYPE_1__*,char*) ; 
 TYPE_1__* FUNC2 () ; 
 TYPE_1__* FUNC3 (char) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 

void FUNC10() {
    int nest = 0;
    for (;;) {
        bool bol = (FUNC0()->column == 1);
        FUNC7();
        int c = FUNC4();
        if (c == EOF)
            return;
        if (c == '\'') {
            FUNC5();
            continue;
        }
        if (c == '\"') {
            FUNC8();
            continue;
        }
        if (c != '#' || !bol)
            continue;
        int column = FUNC0()->column - 1;
        Token *tok = FUNC2();
        if (tok->kind != TIDENT)
            continue;
        if (!nest && (FUNC1(tok, "else") || FUNC1(tok, "elif") || FUNC1(tok, "endif"))) {
            FUNC9(tok);
            Token *hash = FUNC3('#');
            hash->bol = true;
            hash->column = column;
            FUNC9(hash);
            return;
        }
        if (FUNC1(tok, "if") || FUNC1(tok, "ifdef") || FUNC1(tok, "ifndef"))
            nest++;
        else if (nest && FUNC1(tok, "endif"))
            nest--;
        FUNC6();
    }
}