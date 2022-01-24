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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 char** history ; 
 int history_len ; 

int FUNC3(const char *filename) {
    FILE *fp;
    int j;

    fp = FUNC1(filename,"w");
    if (fp == NULL) return -1;
    for (j = 0; j < history_len; j++)
        FUNC2(fp,"%s\n",history[j]);
    FUNC0(fp);
    return 0;
}