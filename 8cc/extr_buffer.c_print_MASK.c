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
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC1 (char) ; 
 char* FUNC2 (char) ; 

__attribute__((used)) static void FUNC3(Buffer *b, char c) {
    char *q = FUNC2(c);
    if (q) {
        FUNC0(b, "%s", q);
    } else if (FUNC1(c)) {
        FUNC0(b, "%c", c);
    } else {
        FUNC0(b, "\\x%02x", c);
    }
}