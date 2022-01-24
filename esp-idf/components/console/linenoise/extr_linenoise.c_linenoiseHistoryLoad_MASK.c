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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int LINENOISE_MAX_LINE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*,char) ; 

int FUNC5(const char *filename) {
    FILE *fp = FUNC2(filename,"r");
    char buf[LINENOISE_MAX_LINE];

    if (fp == NULL) return -1;

    while (FUNC1(buf,LINENOISE_MAX_LINE,fp) != NULL) {
        char *p;

        p = FUNC4(buf,'\r');
        if (!p) p = FUNC4(buf,'\n');
        if (p) *p = '\0';
        FUNC3(buf);
    }
    FUNC0(fp);
    return 0;
}