#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct TYPE_3__ {int w; int h; int /*<<< orphan*/  y; int /*<<< orphan*/  X; scalar_t__ shallow; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char**) ; 
 char** FUNC1 (char**,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char**,int,int,int,int,float,float,float,float,float,int) ; 
 int /*<<< orphan*/  FUNC3 (char**,int,char**,int,int /*<<< orphan*/ *) ; 

data FUNC4(char **paths, int n, int m, char **labels, int k, tree *hierarchy, int min, int max, int size, float angle, float aspect, float hue, float saturation, float exposure, int center)
{
    if(m) paths = FUNC1(paths, n, m);
    data d = {0};
    d.shallow = 0;
    d.w=size;
    d.h=size;
    d.X = FUNC2(paths, n, min, max, size, angle, aspect, hue, saturation, exposure, center);
    d.y = FUNC3(paths, n, labels, k, hierarchy);
    if(m) FUNC0(paths);
    return d;
}