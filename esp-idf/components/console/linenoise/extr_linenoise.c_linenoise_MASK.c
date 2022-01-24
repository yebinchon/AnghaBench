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
 int /*<<< orphan*/  LINENOISE_MAX_LINE ; 
 char* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dumbmode ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,char const*) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (char*) ; 

char *FUNC6(const char *prompt) {
    char *buf = FUNC0(1, LINENOISE_MAX_LINE);
    int count = 0;
    if (!dumbmode) {
        count = FUNC3(buf, LINENOISE_MAX_LINE, prompt);
    } else {
        count = FUNC2(buf, LINENOISE_MAX_LINE, prompt);
    }
    if (count > 0) {
        FUNC4(buf);
        count = FUNC5(buf);
    }
    if (count <= 0) {
        FUNC1(buf);
        return NULL;
    }
    return buf;
}