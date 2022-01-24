#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ kind; char* sval; } ;
typedef  TYPE_1__ Token ;
struct TYPE_8__ {int line; char* name; } ;
typedef  TYPE_2__ File ;

/* Variables and functions */
 scalar_t__ TNEWLINE ; 
 scalar_t__ TNUMBER ; 
 scalar_t__ TSTRING ; 
 int FUNC0 (char*) ; 
 TYPE_2__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 TYPE_1__* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC7() {
    Token *tok = FUNC5();
    if (tok->kind != TNUMBER || !FUNC4(tok->sval))
        FUNC2(tok, "number expected after #line, but got %s", FUNC6(tok));
    int line = FUNC0(tok->sval);
    tok = FUNC5();
    char *filename = NULL;
    if (tok->kind == TSTRING) {
        filename = tok->sval;
        FUNC3();
    } else if (tok->kind != TNEWLINE) {
        FUNC2(tok, "newline or a source name are expected, but got %s", FUNC6(tok));
    }
    File *f = FUNC1();
    f->line = line;
    if (filename)
        f->name = filename;
}