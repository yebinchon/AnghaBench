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
 size_t INT_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,size_t) ; 
 char* FUNC6 (char*,size_t) ; 
 size_t FUNC7 (char*) ; 

char *FUNC8(FILE *fp)
{
    if(FUNC0(fp)) return 0;
    size_t size = 512;
    char *line = FUNC3(size*sizeof(char));
    if(!FUNC1(line, size, fp)){
        FUNC2(line);
        return 0;
    }

    size_t curr = FUNC7(line);

    while((line[curr-1] != '\n') && !FUNC0(fp)){
        if(curr == size-1){
            size *= 2;
            line = FUNC6(line, size*sizeof(char));
            if(!line) {
                FUNC5("%ld\n", size);
                FUNC4();
            }
        }
        size_t readsize = size-curr;
        if(readsize > INT_MAX) readsize = INT_MAX-1;
        FUNC1(&line[curr], readsize, fp);
        curr = FUNC7(line);
    }
    if(line[curr-1] == '\n') line[curr-1] = '\0';

    return line;
}