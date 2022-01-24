#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int** vals; } ;
typedef  TYPE_1__ matrix ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,int*) ; 
 TYPE_1__ FUNC4 (int,int) ; 

matrix FUNC5(char **paths, int n, int k)
{
    matrix y = FUNC4(n, k);
    int i;
    //int count = 0;
    for(i = 0; i < n; ++i){
        char label[4096];
        FUNC1(paths[i], "images", "labels", label);
        FUNC1(label, ".jpg", ".txt", label);
        FILE *file = FUNC2(label, "r");
        if (!file) continue;
        //++count;
        int tag;
        while(FUNC3(file, "%d", &tag) == 1){
            if(tag < k){
                y.vals[i][tag] = 1;
            }
        }
        FUNC0(file);
    }
    //printf("%d/%d\n", count, n);
    return y;
}