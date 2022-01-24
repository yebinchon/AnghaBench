#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ kind; int id; } ;
typedef  TYPE_1__ Token ;
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
#define  KBREAK 138 
#define  KCASE 137 
#define  KCONTINUE 136 
#define  KDEFAULT 135 
#define  KDO 134 
#define  KFOR 133 
#define  KGOTO 132 
#define  KIF 131 
#define  KRETURN 130 
#define  KSWITCH 129 
#define  KWHILE 128 
 scalar_t__ TIDENT ; 
 scalar_t__ TKEYWORD ; 
 int /*<<< orphan*/  FUNC0 (char) ; 
 TYPE_1__* FUNC1 () ; 
 scalar_t__ FUNC2 (char) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 int /*<<< orphan*/ * FUNC10 () ; 
 int /*<<< orphan*/ * FUNC11 () ; 
 int /*<<< orphan*/ * FUNC12 () ; 
 int /*<<< orphan*/ * FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC14 () ; 
 int /*<<< orphan*/ * FUNC15 () ; 
 int /*<<< orphan*/ * FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 

__attribute__((used)) static Node *FUNC18() {
    Token *tok = FUNC1();
    if (tok->kind == TKEYWORD) {
        switch (tok->id) {
        case '{':       return FUNC5();
        case KIF:       return FUNC12();
        case KFOR:      return FUNC10();
        case KWHILE:    return FUNC16();
        case KDO:       return FUNC8();
        case KRETURN:   return FUNC14();
        case KSWITCH:   return FUNC15();
        case KCASE:     return FUNC4(tok);
        case KDEFAULT:  return FUNC7(tok);
        case KBREAK:    return FUNC3(tok);
        case KCONTINUE: return FUNC6(tok);
        case KGOTO:     return FUNC11();
        }
    }
    if (tok->kind == TIDENT && FUNC2(':'))
        return FUNC13(tok);
    FUNC17(tok);
    Node *r = FUNC9();
    FUNC0(';');
    return r;
}