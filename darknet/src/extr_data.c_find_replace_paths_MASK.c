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
 char** FUNC0 (int,int) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,char*) ; 

char **FUNC3(char **paths, int n, char *find, char *replace)
{
    char **replace_paths = FUNC0(n, sizeof(char*));
    int i;
    for(i = 0; i < n; ++i){
        char replaced[4096];
        FUNC2(paths[i], find, replace, replaced);
        replace_paths[i] = FUNC1(replaced);
    }
    return replace_paths;
}