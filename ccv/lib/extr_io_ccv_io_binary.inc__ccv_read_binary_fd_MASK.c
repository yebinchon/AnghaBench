#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int* u8; } ;
struct TYPE_6__ {int step; int rows; TYPE_1__ data; } ;
typedef  TYPE_2__ ccv_dense_matrix_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 TYPE_2__* FUNC0 (int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(FILE* in, ccv_dense_matrix_t** x, int type)
{
	FUNC2(in, 8, SEEK_SET);
	FUNC1(&type, 1, 4, in);
	int rows, cols;
	FUNC1(&rows, 1, 4, in);
	FUNC1(&cols, 1, 4, in);
	*x = FUNC0(rows, cols, type, 0, 0);
	FUNC1((*x)->data.u8, 1, (*x)->step * (*x)->rows, in);
}