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
struct TYPE_4__ {int rows; int cols; void** vals; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ matrix ;

/* Variables and functions */
 void* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,void*,int,void*,int) ; 

matrix FUNC2(matrix m)
{
    matrix c = {0};
    c.rows = m.rows;
    c.cols = m.cols;
    c.vals = FUNC0(c.rows, sizeof(float *));
    int i;
    for(i = 0; i < c.rows; ++i){
        c.vals[i] = FUNC0(c.cols, sizeof(float));
        FUNC1(c.cols, m.vals[i], 1, c.vals[i], 1);
    }
    return c;
}