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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 () ; 
 scalar_t__ FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static Token *FUNC9(char c) {
    Buffer *b = FUNC4();
    FUNC1(b, c);
    char last = c;
    for (;;) {
        int c = FUNC6();
        bool flonum = FUNC7("eEpP", last) && FUNC7("+-", c);
        if (!FUNC3(c) && !FUNC2(c) && c != '.' && !flonum) {
            FUNC8(c);
            FUNC1(b, '\0');
            return FUNC5(FUNC0(b));
        }
        FUNC1(b, c);
        last = c;
    }
}