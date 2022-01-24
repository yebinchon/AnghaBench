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
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 char* FUNC2 (char*,char) ; 
 scalar_t__ FUNC3 (char*) ; 
 char* FUNC4 (char*,char*) ; 

__attribute__((used)) static char *FUNC5(char *info, char *field) {
    char *p = FUNC4(info,field);
    char *n1, *n2;
    char *result;

    if (!p) return NULL;
    p += FUNC3(field)+1;
    n1 = FUNC2(p,'\r');
    n2 = FUNC2(p,',');
    if (n2 && n2 < n1) n1 = n2;
    result = FUNC0(sizeof(char)*(n1-p)+1);
    FUNC1(result,p,(n1-p));
    result[n1-p] = '\0';
    return result;
}