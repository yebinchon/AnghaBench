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
 int* FUNC0 (size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,int*) ; 
 int* FUNC4 (int*,size_t) ; 

int *FUNC5(char *filename, size_t *read)
{
    size_t size = 512;
    size_t count = 0;
    FILE *fp = FUNC2(filename, "r");
    int *d = FUNC0(size, sizeof(int));
    int n, one;
    one = FUNC3(fp, "%d", &n);
    while(one == 1){
        ++count;
        if(count > size){
            size = size*2;
            d = FUNC4(d, size*sizeof(int));
        }
        d[count-1] = n;
        one = FUNC3(fp, "%d", &n);
    }
    FUNC1(fp);
    d = FUNC4(d, count*sizeof(int));
    *read = count;
    return d;
}