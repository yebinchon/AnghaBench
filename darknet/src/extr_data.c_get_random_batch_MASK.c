#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int cols; int /*<<< orphan*/ * vals; } ;
struct TYPE_6__ {int rows; int cols; int /*<<< orphan*/ * vals; } ;
struct TYPE_7__ {TYPE_1__ y; TYPE_2__ X; } ;
typedef  TYPE_3__ data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 () ; 

void FUNC2(data d, int n, float *X, float *y)
{
    int j;
    for(j = 0; j < n; ++j){
        int index = FUNC1()%d.X.rows;
        FUNC0(X+j*d.X.cols, d.X.vals[index], d.X.cols*sizeof(float));
        FUNC0(y+j*d.y.cols, d.y.vals[index], d.y.cols*sizeof(float));
    }
}