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
 char KHASHHASH ; 
 int /*<<< orphan*/ * FUNC0 (char) ; 
 scalar_t__ FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 

__attribute__((used)) static Token *FUNC3() {
    if (FUNC1('>'))
        return FUNC0('}');
    if (FUNC1(':')) {
        if (FUNC1('%')) {
            if (FUNC1(':'))
                return FUNC0(KHASHHASH);
            FUNC2('%');
        }
        return FUNC0('#');
    }
    return NULL;
}