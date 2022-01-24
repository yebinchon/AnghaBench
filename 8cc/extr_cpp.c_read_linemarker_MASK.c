#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {char* sval; scalar_t__ kind; } ;
typedef  TYPE_1__ Token ;
struct TYPE_9__ {int line; char* name; } ;
typedef  TYPE_2__ File ;

/* Variables and functions */
 scalar_t__ TNEWLINE ; 
 scalar_t__ TSTRING ; 
 int FUNC0 (char*) ; 
 TYPE_2__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_1__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC6(Token *tok) {
    if (!FUNC3(tok->sval))
        FUNC2(tok, "line number expected, but got %s", FUNC5(tok));
    int line = FUNC0(tok->sval);
    tok = FUNC4();
    if (tok->kind != TSTRING)
        FUNC2(tok, "filename expected, but got %s", FUNC5(tok));
    char *filename = tok->sval;
    do {
        tok = FUNC4();
    } while (tok->kind != TNEWLINE);
    File *file = FUNC1();
    file->line = line;
    file->name = filename;
}