#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_5__ {int rows; int cols; int type; scalar_t__ sig; } ;
typedef  TYPE_1__ ccv_dense_matrix_t ;

/* Variables and functions */
 int /*<<< orphan*/  CCV_EOF_SIGN ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (char const*,int,scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int,int,int,int /*<<< orphan*/ ,scalar_t__) ; 

ccv_dense_matrix_t* FUNC5(ccv_dense_matrix_t* x, int rows, int cols, int types, int prefer_type, uint64_t sig)
{
	if (x != 0)
	{
		FUNC2(x->rows == rows && x->cols == cols && (FUNC1(x->type) & types) && (FUNC0(x->type) == FUNC0(types)));
		prefer_type = FUNC1(x->type) | FUNC0(x->type);
	}
	if (sig != 0)
		sig = FUNC3((const char*)&prefer_type, sizeof(int), sig, CCV_EOF_SIGN);
	if (x == 0)
	{
		x = FUNC4(rows, cols, prefer_type, 0, sig);
	} else {
		x->sig = sig;
	}
	return x;
}