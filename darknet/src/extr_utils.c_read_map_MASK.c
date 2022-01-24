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
 int FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int* FUNC4 (int*,int) ; 

int *FUNC5(char *filename)
{
    int n = 0;
    int *map = 0;
    char *str;
    FILE *file = FUNC3(filename, "r");
    if(!file) FUNC2(filename);
    while((str=FUNC1(file))){
        ++n;
        map = FUNC4(map, n*sizeof(int));
        map[n-1] = FUNC0(str);
    }
    return map;
}