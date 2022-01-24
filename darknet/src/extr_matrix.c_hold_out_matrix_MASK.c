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
struct TYPE_4__ {int rows; int /*<<< orphan*/ * vals; int /*<<< orphan*/  cols; } ;
typedef  TYPE_1__ matrix ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int,int) ; 
 int FUNC1 () ; 

matrix FUNC2(matrix *m, int n)
{
    int i;
    matrix h;
    h.rows = n;
    h.cols = m->cols;
    h.vals = FUNC0(h.rows, sizeof(float *));
    for(i = 0; i < n; ++i){
        int index = FUNC1()%m->rows;
        h.vals[i] = m->vals[index];
        m->vals[index] = m->vals[--(m->rows)];
    }
    return h;
}