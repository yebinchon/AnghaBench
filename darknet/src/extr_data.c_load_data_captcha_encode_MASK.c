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
struct TYPE_5__ {int cols; } ;
struct TYPE_4__ {TYPE_2__ X; TYPE_2__ y; scalar_t__ shallow; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char**) ; 
 char** FUNC1 (char**,int,int) ; 
 TYPE_2__ FUNC2 (char**,int,int,int) ; 

data FUNC3(char **paths, int n, int m, int w, int h)
{
    if(m) paths = FUNC1(paths, n, m);
    data d = {0};
    d.shallow = 0;
    d.X = FUNC2(paths, n, w, h);
    d.X.cols = 17100;
    d.y = d.X;
    if(m) FUNC0(paths);
    return d;
}