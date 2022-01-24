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
 int /*<<< orphan*/  FUNC0 (float*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*) ; 
 scalar_t__ FUNC2 (char*,char*) ; 

void FUNC3(char *path, char **labels, int k, float *truth)
{
    int i;
    FUNC0(truth, 0, k*sizeof(float));
    int count = 0;
    for(i = 0; i < k; ++i){
        if(FUNC2(path, labels[i])){
            truth[i] = 1;
            ++count;
            //printf("%s %s %d\n", path, labels[i], i);
        }
    }
    if(count != 1 && (k != 1 || count != 0)) FUNC1("Too many or too few labels: %d, %s\n", count, path);
}