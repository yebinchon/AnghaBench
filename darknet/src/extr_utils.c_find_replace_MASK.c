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
 int /*<<< orphan*/  FUNC0 (char*,char*,char*,...) ; 
 int FUNC1 (char*) ; 
 char* FUNC2 (char*,char*) ; 

void FUNC3(char *str, char *orig, char *rep, char *output)
{
    char buffer[4096] = {0};
    char *p;

    FUNC0(buffer, "%s", str);
    if(!(p = FUNC2(buffer, orig))){  // Is 'orig' even in 'str'?
        FUNC0(output, "%s", str);
        return;
    }

    *p = '\0';

    FUNC0(output, "%s%s%s", buffer, rep, p+FUNC1(orig));
}