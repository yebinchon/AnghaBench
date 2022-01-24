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

/* Variables and functions */
 int /*<<< orphan*/  TOKEN_ADD ; 
 int /*<<< orphan*/  TOKEN_AND ; 
 int /*<<< orphan*/  TOKEN_DEC ; 
 int /*<<< orphan*/  TOKEN_INC ; 
 int /*<<< orphan*/  TOKEN_MUL ; 
 int /*<<< orphan*/  TOKEN_NEG ; 
 int /*<<< orphan*/  TOKEN_NOT ; 
 int /*<<< orphan*/  TOKEN_SUB ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

bool FUNC1(void) {
    return
        FUNC0(TOKEN_ADD) ||
        FUNC0(TOKEN_SUB) ||
        FUNC0(TOKEN_MUL) ||
        FUNC0(TOKEN_AND) ||
        FUNC0(TOKEN_NEG) ||
        FUNC0(TOKEN_NOT) ||
        FUNC0(TOKEN_INC) ||
        FUNC0(TOKEN_DEC);
}