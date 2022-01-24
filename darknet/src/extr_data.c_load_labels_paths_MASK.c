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
typedef  int /*<<< orphan*/  tree ;
struct TYPE_4__ {int /*<<< orphan*/ * vals; } ;
typedef  TYPE_1__ matrix ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char**,int,int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC2 (int,int) ; 

matrix FUNC3(char **paths, int n, char **labels, int k, tree *hierarchy)
{
    matrix y = FUNC2(n, k);
    int i;
    for(i = 0; i < n && labels; ++i){
        FUNC1(paths[i], labels, k, y.vals[i]);
        if(hierarchy){
            FUNC0(y.vals[i], k, hierarchy);
        }
    }
    return y;
}