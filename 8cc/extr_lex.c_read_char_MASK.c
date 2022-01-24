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

/* Variables and functions */
 int ENC_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int,int) ; 
 int /*<<< orphan*/  pos ; 
 int FUNC2 () ; 
 int FUNC3 () ; 

__attribute__((used)) static Token *FUNC4(int enc) {
    int c = FUNC3();
    int r = (c == '\\') ? FUNC2() : c;
    c = FUNC3();
    if (c != '\'')
        FUNC0(pos, "unterminated char");
    if (enc == ENC_NONE)
        return FUNC1((char)r, enc);
    return FUNC1(r, enc);
}