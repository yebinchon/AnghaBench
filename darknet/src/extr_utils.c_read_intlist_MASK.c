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

int *FUNC4(char *gpu_list, int *ngpus, int d)
{
    int *gpus = 0;
    if(gpu_list){
        int len = FUNC3(gpu_list);
        *ngpus = 1;
        int i;
        for(i = 0; i < len; ++i){
            if (gpu_list[i] == ',') ++*ngpus;
        }
        gpus = FUNC1(*ngpus, sizeof(int));
        for(i = 0; i < *ngpus; ++i){
            gpus[i] = FUNC0(gpu_list);
            gpu_list = FUNC2(gpu_list, ',')+1;
        }
    } else {
        gpus = FUNC1(1, sizeof(float));
        *gpus = d;
        *ngpus = 1;
    }
    return gpus;
}