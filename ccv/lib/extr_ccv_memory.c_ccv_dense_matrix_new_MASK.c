#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_4__ {unsigned char* u8; } ;
struct TYPE_5__ {int type; int refcount; int datatype; int channels; int rows; int cols; int /*<<< orphan*/  step; scalar_t__ reserved1; int /*<<< orphan*/  format; int /*<<< orphan*/  resides; scalar_t__ reserved0; scalar_t__ sig; TYPE_1__ data; } ;
typedef  TYPE_2__ ccv_dense_matrix_t ;

/* Variables and functions */
 int CCV_GARBAGE ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int CCV_MATRIX_DENSE ; 
 int CCV_NO_DATA_ALLOC ; 
 int CCV_REUSABLE ; 
 int /*<<< orphan*/  CCV_TENSOR_CPU_MEMORY ; 
 int /*<<< orphan*/  CCV_TENSOR_FORMAT_NHWC ; 
 int CCV_UNMANAGED ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  ccv_cache ; 
 scalar_t__ ccv_cache_opt ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,scalar_t__,scalar_t__*) ; 
 int FUNC6 (int,int,int) ; 

ccv_dense_matrix_t* FUNC7(int rows, int cols, int type, void* data, uint64_t sig)
{
	ccv_dense_matrix_t* mat;
	if (ccv_cache_opt && sig != 0 && !data && !(type & CCV_NO_DATA_ALLOC))
	{
		uint8_t type;
		mat = (ccv_dense_matrix_t*)FUNC5(&ccv_cache, sig, &type);
		if (mat)
		{
			FUNC3(type == 0);
			mat->type |= CCV_GARBAGE; // set the flag so the upper level function knows this is from recycle-bin
			mat->refcount = 1;
			return mat;
		}
	}
	if (type & CCV_NO_DATA_ALLOC)
	{
		mat = (ccv_dense_matrix_t*)FUNC4(sizeof(ccv_dense_matrix_t));
		mat->type = (FUNC0(type) | FUNC1(type) | CCV_MATRIX_DENSE | CCV_NO_DATA_ALLOC) & ~CCV_GARBAGE;
		mat->data.u8 = data;
	} else {
		const size_t hdr_size = (sizeof(ccv_dense_matrix_t) + 15) & -16;
		mat = (ccv_dense_matrix_t*)(data ? data : FUNC4(FUNC6(rows, cols, type)));
		mat->type = (FUNC0(type) | FUNC1(type) | CCV_MATRIX_DENSE) & ~CCV_GARBAGE;
		mat->type |= data ? CCV_UNMANAGED : CCV_REUSABLE; // it still could be reusable because the signature could be derived one.
		mat->data.u8 = (unsigned char*)mat + hdr_size;
	}
	mat->sig = sig;
#if CCV_NNC_TENSOR_TFB
	mat->reserved0 = 0;
	mat->resides = CCV_TENSOR_CPU_MEMORY;
	mat->format = CCV_TENSOR_FORMAT_NHWC;
	mat->datatype = CCV_GET_DATA_TYPE(type);
	mat->channels = CCV_GET_CHANNEL(type);
	mat->reserved1 = 0;
#endif
	mat->rows = rows;
	mat->cols = cols;
	mat->step = FUNC2(cols, type);
	mat->refcount = 1;
	return mat;
}