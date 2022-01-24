#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  params ;
typedef  int /*<<< orphan*/  ccv_mser_param_t ;
typedef  int /*<<< orphan*/  ccv_mser_keypoint_t ;
struct TYPE_18__ {int type; int /*<<< orphan*/  cols; int /*<<< orphan*/  rows; int /*<<< orphan*/  sig; } ;
typedef  TYPE_1__ ccv_dense_matrix_t ;
typedef  int /*<<< orphan*/  ccv_array_t ;

/* Variables and functions */
 int CCV_32F ; 
 int CCV_32S ; 
 int CCV_64F ; 
 int CCV_8U ; 
 int CCV_ALL_DATA_TYPE ; 
 int CCV_C1 ; 
 int /*<<< orphan*/  CCV_EOF_SIGN ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bsig ; 
 int /*<<< orphan*/ * FUNC5 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  rsig ; 

ccv_array_t* FUNC13(ccv_dense_matrix_t* a, ccv_dense_matrix_t* h, ccv_dense_matrix_t** b, int type, ccv_mser_param_t params)
{
	uint64_t psig = FUNC6((const char*)&params, sizeof(params), CCV_EOF_SIGN);
	FUNC7(bsig, FUNC12("ccv_mser(matrix)"), FUNC11(h == 0 && a->sig != 0, psig, a->sig, CCV_EOF_SIGN), FUNC11(h != 0 && a->sig != 0 && h->sig != 0, psig, a->sig, h->sig, CCV_EOF_SIGN));
	FUNC7(rsig, FUNC12("ccv_mser(array)"), FUNC11(h == 0 && a->sig != 0, psig, a->sig, CCV_EOF_SIGN), FUNC11(h != 0 && a->sig != 0 && h->sig != 0, psig, a->sig, h->sig, CCV_EOF_SIGN));
	type = (type == 0) ? CCV_32S | CCV_C1 : FUNC1(type) | CCV_C1;
	ccv_dense_matrix_t* db = *b = FUNC8(*b, a->rows, a->cols, CCV_C1 | CCV_ALL_DATA_TYPE, type, bsig);
	ccv_array_t* seq = FUNC5(sizeof(ccv_mser_keypoint_t), 64, rsig);
	FUNC9(seq, db, seq);
	FUNC10(db, seq);
	// multi-channel or matrix that is float-point, uses distance based method (MSCR)
	if (FUNC0(a->type) > 1 || FUNC1(a->type) == CCV_32F || FUNC1(a->type) == CCV_64F)
		FUNC3(a, h, db, seq, params);
	else if (FUNC1(a->type) == CCV_8U) // if it is single-channel and 256-scale, uses linear MSER
		FUNC2(a, h, db, seq, params);
	else // otherwise, uses original MSER
		FUNC4(a, h, db, seq, params);
	return seq;
}