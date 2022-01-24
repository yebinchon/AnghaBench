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
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 unsigned char FUNC6 () ; 
 int /*<<< orphan*/  pos ; 
 int FUNC7 () ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static Token *FUNC10(int enc) {
    Buffer *b = FUNC4();
    for (;;) {
        int c = FUNC8();
        if (c == EOF)
            FUNC3(pos, "unterminated string");
        if (c == '"')
            break;
        if (c != '\\') {
            FUNC2(b, c);
            continue;
        }
        bool isucs = (FUNC6() == 'u' || FUNC6() == 'U');
        c = FUNC7();
        if (isucs) {
            FUNC9(b, c);
            continue;
        }
        FUNC2(b, c);
    }
    FUNC2(b, '\0');
    return FUNC5(FUNC0(b), FUNC1(b), enc);
}