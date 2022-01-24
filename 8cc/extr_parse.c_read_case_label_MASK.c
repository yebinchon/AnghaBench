#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  Token ;
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
 int /*<<< orphan*/  KELLIPSIS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  cases ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 int /*<<< orphan*/  FUNC4 (int,int,char*) ; 
 char* FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 () ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Node *FUNC10(Token *tok) {
    if (!cases)
        FUNC2(tok, "stray case label");
    char *label = FUNC5();
    int beg = FUNC7();
    if (FUNC6(KELLIPSIS)) {
        int end = FUNC7();
        FUNC3(':');
        if (beg > end)
            FUNC2(tok, "case region is not in correct order: %d ... %d", beg, end);
        FUNC9(cases, FUNC4(beg, end, label));
    } else {
        FUNC3(':');
        FUNC9(cases, FUNC4(beg, beg, label));
    }
    FUNC1(cases);
    return FUNC8(FUNC0(label));
}