#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int type; scalar_t__ sig; int size; int ifbit; scalar_t__ refcount; struct TYPE_6__* vector; struct TYPE_6__* index; int /*<<< orphan*/  cols; int /*<<< orphan*/  rows; } ;
typedef  TYPE_1__ ccv_sparse_matrix_t ;
typedef  int /*<<< orphan*/  ccv_matrix_t ;
typedef  TYPE_1__ ccv_dense_matrix_t ;
typedef  TYPE_1__ ccv_compressed_sparse_matrix_t ;

/* Variables and functions */
 scalar_t__ CCV_32F ; 
 scalar_t__ CCV_32S ; 
 scalar_t__ CCV_64F ; 
 scalar_t__ CCV_64S ; 
 scalar_t__ CCV_8U ; 
 scalar_t__ FUNC0 (int) ; 
 int CCV_MATRIX_CSC ; 
 int CCV_MATRIX_CSR ; 
 int CCV_MATRIX_DENSE ; 
 int CCV_MATRIX_SPARSE ; 
 int CCV_NO_DATA_ALLOC ; 
 int CCV_REUSABLE ; 
 int CCV_UNMANAGED ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  ccv_cache ; 
 int /*<<< orphan*/  ccv_cache_opt ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,TYPE_1__*,size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC5(ccv_matrix_t* mat)
{
	int type = *(int*)mat;
	FUNC1(!(type & CCV_UNMANAGED));
	if (type & CCV_MATRIX_DENSE)
	{
		ccv_dense_matrix_t* dmt = (ccv_dense_matrix_t*)mat;
		dmt->refcount = 0;
		if (!ccv_cache_opt || // e don't enable cache
			!(dmt->type & CCV_REUSABLE) || // or this is not a reusable piece
			dmt->sig == 0 || // or this doesn't have valid signature
			(dmt->type & CCV_NO_DATA_ALLOC)) // or this matrix is allocated as header-only, therefore we cannot cache it
			FUNC2(dmt);
		else {
			FUNC1(FUNC0(dmt->type) == CCV_8U ||
				   FUNC0(dmt->type) == CCV_32S ||
				   FUNC0(dmt->type) == CCV_32F ||
				   FUNC0(dmt->type) == CCV_64S ||
				   FUNC0(dmt->type) == CCV_64F);
			size_t size = FUNC4(dmt->rows, dmt->cols, dmt->type);
			FUNC3(&ccv_cache, dmt->sig, dmt, size, 0 /* type 0 */);
		}
	} else if (type & CCV_MATRIX_SPARSE) {
		ccv_sparse_matrix_t* smt = (ccv_sparse_matrix_t*)mat;
		int i;
		for (i = 0; i < smt->size; i++)
		{
			if (smt->index[i].ifbit > 1)
				FUNC2(smt->vector[i].index); // It is a union of index / data, can just free them.
		}
		FUNC2(smt->index);
		FUNC2(smt->vector);
		FUNC2(smt);
	} else if ((type & CCV_MATRIX_CSR) || (type & CCV_MATRIX_CSC)) {
		ccv_compressed_sparse_matrix_t* csm = (ccv_compressed_sparse_matrix_t*)mat;
		csm->refcount = 0;
		FUNC2(csm);
	}
}