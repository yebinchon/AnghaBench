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
 int /*<<< orphan*/  dumpsource ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 char** FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char**) ; 
 char** FUNC3 (char*) ; 
 int /*<<< orphan*/  source_lines ; 

__attribute__((used)) static void FUNC4(char *file, int line) {
    if (!dumpsource)
        return;
    char **lines = FUNC1(source_lines, file);
    if (!lines) {
        lines = FUNC3(file);
        if (!lines)
            return;
        FUNC2(source_lines, file, lines);
    }
    int len = 0;
    for (char **p = lines; *p; p++)
        len++;
    FUNC0("# %s", lines[line - 1]);
}