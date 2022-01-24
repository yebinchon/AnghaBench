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
 int FUNC0 (char*) ; 
 int* FUNC1 (int,int) ; 
 char* FUNC2 (char*,char) ; 
 int FUNC3 (char*) ; 

int *FUNC4(char *a, int *num)
{
    int *mask = 0;
    if(a){
        int len = FUNC3(a);
        int n = 1;
        int i;
        for(i = 0; i < len; ++i){
            if (a[i] == ',') ++n;
        }
        mask = FUNC1(n, sizeof(int));
        for(i = 0; i < n; ++i){
            int val = FUNC0(a);
            mask[i] = val;
            a = FUNC2(a, ',')+1;
        }
        *num = n;
    }
    return mask;
}