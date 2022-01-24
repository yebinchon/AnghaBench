#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_6__ {int /*<<< orphan*/ * u8; } ;
struct TYPE_7__ {int size; int prime_index; int /*<<< orphan*/ * index; scalar_t__ rnum; TYPE_1__ data; } ;
typedef  TYPE_2__ ccv_sparse_matrix_vector_t ;
struct TYPE_8__ {int type; scalar_t__ major; int rows; int cols; } ;
typedef  TYPE_3__ ccv_sparse_matrix_t ;
typedef  int /*<<< orphan*/  ccv_sparse_matrix_index_t ;

/* Variables and functions */
 int CCV_DENSE_VECTOR ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 scalar_t__ CCV_SPARSE_COL_MAJOR ; 
 scalar_t__ FUNC2 (int,size_t const) ; 

__attribute__((used)) static void FUNC3(ccv_sparse_matrix_vector_t* vector, const ccv_sparse_matrix_t* const mat)
{
	if (mat->type & CCV_DENSE_VECTOR)
	{
		const int vlen = (mat->major == CCV_SPARSE_COL_MAJOR) ? mat->rows : mat->cols;
		const size_t cell_size = FUNC1(mat->type) * FUNC0(mat->type);
		vector->size = vlen;
		vector->data.u8 = (uint8_t*)FUNC2(1, (cell_size * vlen + 15) & -16);
		return;
	}
	vector->prime_index = 1; // See ccv_util.c to know why this is 1 and why size is 2.
	vector->size = 2;
	vector->rnum = 0;
	const size_t cell_size_aligned = (FUNC1(mat->type) * FUNC0(mat->type) + 3) & -4;
	vector->index = (ccv_sparse_matrix_index_t*)FUNC2(sizeof(ccv_sparse_matrix_index_t) + cell_size_aligned, vector->size);
}