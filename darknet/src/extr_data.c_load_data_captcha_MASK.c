#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * vals; } ;
struct TYPE_4__ {TYPE_2__ y; int /*<<< orphan*/  X; scalar_t__ shallow; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ data ;

/* Variables and functions */
 int NUMCHARS ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char**) ; 
 char** FUNC2 (char**,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char**,int,int,int) ; 
 TYPE_2__ FUNC4 (int,int) ; 

data FUNC5(char **paths, int n, int m, int k, int w, int h)
{
    if(m) paths = FUNC2(paths, n, m);
    data d = {0};
    d.shallow = 0;
    d.X = FUNC3(paths, n, w, h);
    d.y = FUNC4(n, k*NUMCHARS);
    int i;
    for(i = 0; i < n; ++i){
        FUNC0(paths[i], k, d.y.vals[i]);
    }
    if(m) FUNC1(paths);
    return d;
}