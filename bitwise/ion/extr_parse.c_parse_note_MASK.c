#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  pos; } ;
typedef  int /*<<< orphan*/  SrcPos ;
typedef  int /*<<< orphan*/  NoteArg ;
typedef  int /*<<< orphan*/  Note ;

/* Variables and functions */
 int /*<<< orphan*/  TOKEN_COMMA ; 
 int /*<<< orphan*/  TOKEN_LPAREN ; 
 int /*<<< orphan*/  TOKEN_RPAREN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 TYPE_1__ token ; 

Note FUNC7(void) {
    SrcPos pos = token.pos;
    const char *name = FUNC5();
    NoteArg *args = NULL;
    if (FUNC3(TOKEN_LPAREN)) {
        FUNC1(args, FUNC6());
        while (FUNC3(TOKEN_COMMA)) {
            FUNC1(args, FUNC6());
        }
        FUNC2(TOKEN_RPAREN);
    }
    return FUNC4(pos, name, args, FUNC0(args));
}