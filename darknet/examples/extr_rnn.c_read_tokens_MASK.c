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
 char** FUNC0 (size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 char** FUNC4 (char**,size_t) ; 
 scalar_t__ FUNC5 (char*,char*) ; 

char **FUNC6(char *filename, size_t *read)
{
    size_t size = 512;
    size_t count = 0;
    FILE *fp = FUNC3(filename, "r");
    char **d = FUNC0(size, sizeof(char *));
    char *line;
    while((line=FUNC2(fp)) != 0){
        ++count;
        if(count > size){
            size = size*2;
            d = FUNC4(d, size*sizeof(char *));
        }
        if(0==FUNC5(line, "<NEWLINE>")) line = "\n";
        d[count-1] = line;
    }
    FUNC1(fp);
    d = FUNC4(d, count*sizeof(char *));
    *read = count;
    return d;
}