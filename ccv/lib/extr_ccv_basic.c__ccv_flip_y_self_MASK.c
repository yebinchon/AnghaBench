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
struct TYPE_5__ {int step; int rows; TYPE_1__ data; } ;
typedef  TYPE_2__ ccv_dense_matrix_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned char*,int) ; 

__attribute__((used)) static void FUNC2(ccv_dense_matrix_t* a)
{
	int i;
	unsigned char* buffer = (unsigned char*)FUNC0(a->step);
	unsigned char* a_ptr = a->data.u8;
	unsigned char* b_ptr = a->data.u8 + (a->rows - 1) * a->step;
	for (i = 0; i < a->rows / 2; i++)
	{
		FUNC1(buffer, a_ptr, a->step);
		FUNC1(a_ptr, b_ptr, a->step);
		FUNC1(b_ptr, buffer, a->step);
		a_ptr += a->step;
		b_ptr -= a->step;
	}
}