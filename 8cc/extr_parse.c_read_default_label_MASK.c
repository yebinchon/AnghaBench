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
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ defaultcase ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static Node *FUNC5(Token *tok) {
    FUNC2(':');
    if (defaultcase)
        FUNC1(tok, "duplicate default");
    defaultcase = FUNC3();
    return FUNC4(FUNC0(defaultcase));
}