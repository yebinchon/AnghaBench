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
 float* FUNC0 (int,int) ; 
 float FUNC1 (char*) ; 
 float FUNC2 (char*,char**) ; 

float *FUNC3(char *line, int n)
{
    float *field = FUNC0(n, sizeof(float));
    char *c, *p, *end;
    int count = 0;
    int done = 0;
    for(c = line, p = line; !done; ++c){
        done = (*c == '\0');
        if(*c == ',' || done){
            *c = '\0';
            field[count] = FUNC2(p, &end);
            if(p == c) field[count] = FUNC1("");
            if(end != c && (end != c-1 || *end != '\r')) field[count] = FUNC1(""); //DOS file formats!
            p = c+1;
            ++count;
        }
    }
    return field;
}