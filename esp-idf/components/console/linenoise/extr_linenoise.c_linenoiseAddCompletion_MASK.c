#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char** cvec; int len; } ;
typedef  TYPE_1__ linenoiseCompletions ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t) ; 
 char** FUNC3 (char**,int) ; 
 size_t FUNC4 (char const*) ; 

void FUNC5(linenoiseCompletions *lc, const char *str) {
    size_t len = FUNC4(str);
    char *copy, **cvec;

    copy = FUNC1(len+1);
    if (copy == NULL) return;
    FUNC2(copy,str,len+1);
    cvec = FUNC3(lc->cvec,sizeof(char*)*(lc->len+1));
    if (cvec == NULL) {
        FUNC0(copy);
        return;
    }
    lc->cvec = cvec;
    lc->cvec[lc->len++] = copy;
}