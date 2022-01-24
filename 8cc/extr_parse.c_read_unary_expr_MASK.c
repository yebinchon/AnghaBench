#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ kind; int id; } ;
typedef  TYPE_1__ Token ;
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
#define  KALIGNOF 132 
#define  KSIZEOF 131 
#define  OP_DEC 130 
#define  OP_INC 129 
#define  OP_LOGAND 128 
 int /*<<< orphan*/  OP_PRE_DEC ; 
 int /*<<< orphan*/  OP_PRE_INC ; 
 scalar_t__ TKEYWORD ; 
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 () ; 
 int /*<<< orphan*/ * FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 

__attribute__((used)) static Node *FUNC13() {
    Token *tok = FUNC0();
    if (tok->kind == TKEYWORD) {
        switch (tok->id) {
        case KSIZEOF: return FUNC5();
        case KALIGNOF: return FUNC1();
        case OP_INC: return FUNC9(OP_PRE_INC);
        case OP_DEC: return FUNC9(OP_PRE_DEC);
        case OP_LOGAND: return FUNC3(tok);
        case '&': return FUNC6();
        case '*': return FUNC8(tok);
        case '+': return FUNC2();
        case '-': return FUNC11();
        case '~': return FUNC7(tok);
        case '!': return FUNC10();
        }
    }
    FUNC12(tok);
    return FUNC4();
}