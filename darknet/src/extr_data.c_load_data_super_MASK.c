#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_3__ image ;
struct TYPE_14__ {int rows; int cols; int /*<<< orphan*/ * vals; } ;
struct TYPE_13__ {int rows; int cols; int /*<<< orphan*/ * vals; } ;
struct TYPE_16__ {TYPE_2__ y; TYPE_1__ X; scalar_t__ shallow; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_4__ data ;

/* Variables and functions */
 void* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__) ; 
 int /*<<< orphan*/  FUNC2 (char**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__) ; 
 char** FUNC4 (char**,int,int) ; 
 TYPE_3__ FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 () ; 
 TYPE_3__ FUNC7 (TYPE_3__,int,int) ; 
 TYPE_3__ FUNC8 (TYPE_3__,int,int) ; 

data FUNC9(char **paths, int n, int m, int w, int h, int scale)
{
    if(m) paths = FUNC4(paths, n, m);
    data d = {0};
    d.shallow = 0;

    int i;
    d.X.rows = n;
    d.X.vals = FUNC0(n, sizeof(float*));
    d.X.cols = w*h*3;

    d.y.rows = n;
    d.y.vals = FUNC0(n, sizeof(float*));
    d.y.cols = w*scale * h*scale * 3;

    for(i = 0; i < n; ++i){
        image im = FUNC5(paths[i], 0, 0);
        image crop = FUNC7(im, w*scale, h*scale);
        int flip = FUNC6()%2;
        if (flip) FUNC1(crop);
        image resize = FUNC8(crop, w, h);
        d.X.vals[i] = resize.data;
        d.y.vals[i] = crop.data;
        FUNC3(im);
    }

    if(m) FUNC2(paths);
    return d;
}