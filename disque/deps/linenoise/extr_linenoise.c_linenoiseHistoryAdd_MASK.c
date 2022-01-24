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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char** history ; 
 int history_len ; 
 int history_max_len ; 
 char** FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char**,char**,int) ; 
 int /*<<< orphan*/  FUNC3 (char**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 char* FUNC5 (char const*) ; 

int FUNC6(const char *line) {
    char *linecopy;

    if (history_max_len == 0) return 0;

    /* Initialization on first call. */
    if (history == NULL) {
        history = FUNC1(sizeof(char*)*history_max_len);
        if (history == NULL) return 0;
        FUNC3(history,0,(sizeof(char*)*history_max_len));
    }

    /* Don't add duplicated lines. */
    if (history_len && !FUNC4(history[history_len-1], line)) return 0;

    /* Add an heap allocated copy of the line in the history.
     * If we reached the max length, remove the older line. */
    linecopy = FUNC5(line);
    if (!linecopy) return 0;
    if (history_len == history_max_len) {
        FUNC0(history[0]);
        FUNC2(history,history+1,sizeof(char*)*(history_max_len-1));
        history_len--;
    }
    history[history_len] = linecopy;
    history_len++;
    return 1;
}