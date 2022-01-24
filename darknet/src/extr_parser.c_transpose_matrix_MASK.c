#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 float* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (float*) ; 
 int /*<<< orphan*/  FUNC2 (float*,float*,int) ; 

void FUNC3(float *a, int rows, int cols)
{
    float *transpose = FUNC0(rows*cols, sizeof(float));
    int x, y;
    for(x = 0; x < rows; ++x){
        for(y = 0; y < cols; ++y){
            transpose[y*rows + x] = a[x*cols + y];
        }
    }
    FUNC2(a, transpose, rows*cols*sizeof(float));
    FUNC1(transpose);
}