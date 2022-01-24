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
 int WCONTINUED ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int WUNTRACED ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,int /*<<< orphan*/ *) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int,int*,int) ; 

int FUNC6(char *file) {
    int statval;
    int child_pid;
    child_pid = FUNC3();
    if(child_pid == -1)
    {
        FUNC4("could not fork! \n");
        return 1;
    }
    else if(child_pid == 0)
    {
        FUNC2("desktop-file-validate", "desktop-file-validate", file, NULL);
    }
    else
    {
        FUNC5(child_pid, &statval, WUNTRACED | WCONTINUED);
        if(FUNC1(statval)){
            return(FUNC0(statval));
        }
    }
    return -1;
}