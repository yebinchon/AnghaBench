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
typedef  int /*<<< orphan*/  Pos ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int EOF ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 scalar_t__ FUNC7 (char) ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 

char *FUNC10(bool *std) {
    if (!FUNC3())
        return NULL;
    FUNC9();
    Pos p = FUNC5(0);
    char close;
    if (FUNC7('"')) {
        *std = false;
        close = '"';
    } else if (FUNC7('<')) {
        *std = true;
        close = '>';
    } else {
        return NULL;
    }
    Buffer *b = FUNC6();
    while (!FUNC7(close)) {
        int c = FUNC8();
        if (c == EOF || c == '\n')
            FUNC4(p, "premature end of header name");
        FUNC2(b, c);
    }
    if (FUNC1(b) == 0)
        FUNC4(p, "header name should not be empty");
    FUNC2(b, '\0');
    return FUNC0(b);
}