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
typedef  int /*<<< orphan*/  fmt_str ;

/* Variables and functions */
 int AV_SAMPLE_FMT_NB ; 
 char* FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

int FUNC2(void *optctx, const char *opt, const char *arg)
{
    int i;
    char fmt_str[128];
    for (i = -1; i < AV_SAMPLE_FMT_NB; i++)
        FUNC1("%s\n", FUNC0(fmt_str, sizeof(fmt_str), i));
    return 0;
}