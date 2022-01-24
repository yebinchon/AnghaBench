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
 int /*<<< orphan*/  mutex ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 () ; 

char **FUNC4(char **paths, int n, int m)
{
    char **random_paths = FUNC0(n, sizeof(char*));
    int i;
    FUNC1(&mutex);
    for(i = 0; i < n; ++i){
        int index = FUNC3()%m;
        random_paths[i] = paths[index];
        //if(i == 0) printf("%s\n", paths[index]);
    }
    FUNC2(&mutex);
    return random_paths;
}