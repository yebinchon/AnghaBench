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
struct TYPE_3__ {int rows; int cols; double** vals; } ;
typedef  TYPE_1__ matrix ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

void FUNC1(matrix m)
{
    int i, j;
    FUNC0("%d X %d Matrix:\n",m.rows, m.cols);
    FUNC0(" __");
    for(j = 0; j < 16*m.cols-1; ++j) FUNC0(" ");
    FUNC0("__ \n");

    FUNC0("|  ");
    for(j = 0; j < 16*m.cols-1; ++j) FUNC0(" ");
    FUNC0("  |\n");

    for(i = 0; i < m.rows; ++i){
        FUNC0("|  ");
        for(j = 0; j < m.cols; ++j){
            FUNC0("%15.7f ", m.vals[i][j]);
        }
        FUNC0(" |\n");
    }
    FUNC0("|__");
    for(j = 0; j < 16*m.cols-1; ++j) FUNC0(" ");
    FUNC0("__|\n");
}