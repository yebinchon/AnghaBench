#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  image ;
struct TYPE_6__ {int rows; int cols; int /*<<< orphan*/ * vals; } ;
struct TYPE_7__ {int w; int h; TYPE_1__ X; int /*<<< orphan*/  y; scalar_t__ shallow; } ;
typedef  TYPE_2__ data ;
struct TYPE_8__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 void* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_5__ FUNC2 (int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int,int /*<<< orphan*/ ) ; 

data *FUNC4(data orig, int divs, int size)
{
    data *ds = FUNC0(divs*divs, sizeof(data));
    int i, j;
#pragma omp parallel for
    for(i = 0; i < divs*divs; ++i){
        data d;
        d.shallow = 0;
        d.w = orig.w/divs * size;
        d.h = orig.h/divs * size;
        d.X.rows = orig.X.rows;
        d.X.cols = d.w*d.h*3;
        d.X.vals = FUNC0(d.X.rows, sizeof(float*));

        d.y = FUNC1(orig.y);
#pragma omp parallel for
        for(j = 0; j < orig.X.rows; ++j){
            int x = (i%divs) * orig.w / divs - (d.w - orig.w/divs)/2;
            int y = (i/divs) * orig.h / divs - (d.h - orig.h/divs)/2;
            image im = FUNC3(orig.w, orig.h, 3, orig.X.vals[j]);
            d.X.vals[j] = FUNC2(im, x, y, d.w, d.h).data;
        }
        ds[i] = d;
    }
    return ds;
}