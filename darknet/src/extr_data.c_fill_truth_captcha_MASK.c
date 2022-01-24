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
 int NUMCHARS ; 
 int FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char*,char) ; 
 int FUNC2 (char*) ; 
 char* FUNC3 (char*,char) ; 

void FUNC4(char *path, int n, float *truth)
{
    char *begin = FUNC3(path, '/');
    ++begin;
    int i;
    for(i = 0; i < FUNC2(begin) && i < n && begin[i] != '.'; ++i){
        int index = FUNC0(begin[i]);
        if(index > 35) FUNC1("Bad %c\n", begin[i]);
        truth[i*NUMCHARS+index] = 1;
    }
    for(;i < n; ++i){
        truth[i*NUMCHARS + NUMCHARS-1] = 1;
    }
}