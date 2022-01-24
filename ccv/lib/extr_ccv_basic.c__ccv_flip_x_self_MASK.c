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
struct TYPE_4__ {unsigned char* u8; } ;
struct TYPE_5__ {int rows; int cols; int /*<<< orphan*/  step; TYPE_1__ data; int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ ccv_dense_matrix_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char*,int) ; 

__attribute__((used)) static void FUNC4(ccv_dense_matrix_t* a)
{
	int i, j;
	int len = FUNC1(a->type) * FUNC0(a->type);
	unsigned char* buffer = (unsigned char*)FUNC2(len);
	unsigned char* a_ptr = a->data.u8;
	for (i = 0; i < a->rows; i++)
	{
		for (j = 0; j < a->cols / 2; j++)
		{
			FUNC3(buffer, a_ptr + j * len, len);
			FUNC3(a_ptr + j * len, a_ptr + (a->cols - 1 - j) * len, len);
			FUNC3(a_ptr + (a->cols - 1 - j) * len, buffer, len);
		}
		a_ptr += a->step;
	}
}