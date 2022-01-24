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
 int LINENOISE_MAX_LINE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 (char*,int,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 char* FUNC5 (char*) ; 
 size_t FUNC6 (char*) ; 

char *FUNC7(const char *prompt) {
    char buf[LINENOISE_MAX_LINE];
    int count;

    if (FUNC2()) {
        size_t len;

        FUNC4("%s",prompt);
        FUNC0(stdout);
        if (FUNC1(buf,LINENOISE_MAX_LINE,stdin) == NULL) return NULL;
        len = FUNC6(buf);
        while(len && (buf[len-1] == '\n' || buf[len-1] == '\r')) {
            len--;
            buf[len] = '\0';
        }
        return FUNC5(buf);
    } else {
        count = FUNC3(buf,LINENOISE_MAX_LINE,prompt);
        if (count == -1) return NULL;
        return FUNC5(buf);
    }
}