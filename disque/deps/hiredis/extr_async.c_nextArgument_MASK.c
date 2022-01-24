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
 char* FUNC1 (char*,char) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static char *FUNC3(char *start, char **str, size_t *len) {
    char *p = start;
    if (p[0] != '$') {
        p = FUNC1(p,'$');
        if (p == NULL) return NULL;
    }

    *len = (int)FUNC2(p+1,NULL,10);
    p = FUNC1(p,'\r');
    FUNC0(p);
    *str = p+2;
    return p+2+(*len)+2;
}