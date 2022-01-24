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
typedef  int /*<<< orphan*/  line ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 char* FUNC3 (char*,char) ; 
 scalar_t__ FUNC4 (char*,char*,int) ; 
 int FUNC5 (char*,int /*<<< orphan*/ *,int) ; 

size_t FUNC6(void) {
    char line[1024];
    size_t pd = 0;
    FILE *fp = FUNC2("/proc/self/smaps","r");

    if (!fp) return 0;
    while(FUNC1(line,sizeof(line),fp) != NULL) {
        if (FUNC4(line,"Private_Dirty:",14) == 0) {
            char *p = FUNC3(line,'k');
            if (p) {
                *p = '\0';
                pd += FUNC5(line+14,NULL,10) * 1024;
            }
        }
    }
    FUNC0(fp);
    return pd;
}