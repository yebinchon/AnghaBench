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
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char) ; 
 scalar_t__ FUNC2 (char) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned char FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 char FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Token *FUNC10(char c) {
    Buffer *b = FUNC3();
    FUNC1(b, c);
    for (;;) {
        c = FUNC7();
        if (FUNC2(c) || (c & 0x80) || c == '_' || c == '$') {
            FUNC1(b, c);
            continue;
        }
        // C11 6.4.2.1: \u or \U characters (universal-character-name)
        // are allowed to be part of identifiers.
        if (c == '\\' && (FUNC5() == 'u' || FUNC5() == 'U')) {
            FUNC9(b, FUNC6());
            continue;
        }
        FUNC8(c);
        FUNC1(b, '\0');
        return FUNC4(FUNC0(b));
    }
}