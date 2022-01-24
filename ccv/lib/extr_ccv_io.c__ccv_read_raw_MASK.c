#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int step; } ;
typedef  TYPE_1__ ccv_dense_matrix_t ;

/* Variables and functions */
 int CCV_8U ; 
 int CCV_C1 ; 
 int CCV_C3 ; 
 int CCV_C4 ; 
#define  CCV_IO_ABGR_RAW 134 
#define  CCV_IO_ARGB_RAW 133 
#define  CCV_IO_BGRA_RAW 132 
#define  CCV_IO_BGR_RAW 131 
 int CCV_IO_FINAL ; 
#define  CCV_IO_GRAY_RAW 130 
 int CCV_IO_NO_COPY ; 
#define  CCV_IO_RGBA_RAW 129 
#define  CCV_IO_RGB_RAW 128 
 int CCV_NO_DATA_ALLOC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__**,void*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__**,void*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**,void*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__**,void*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__**,void*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__**,void*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__**,void*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 TYPE_1__* FUNC8 (int,int,int,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC10(ccv_dense_matrix_t** x, void* data, int type, int rows, int cols, int scanline)
{
	FUNC7(rows > 0 && cols > 0 && scanline > 0);
	if (type & CCV_IO_NO_COPY)
	{
		// there is no conversion that we can apply if it is NO_COPY mode
		// NO_COPY mode generate an "unreusable" matrix, which requires you to
		// manually release its data block (which is, in fact the same data
		// block you passed in)
		int ctype = CCV_8U | CCV_C1;
		switch (type & 0xFF)
		{
			case CCV_IO_RGB_RAW:
			case CCV_IO_BGR_RAW:
				ctype = CCV_8U | CCV_C3;
				break;
			case CCV_IO_RGBA_RAW:
			case CCV_IO_ARGB_RAW:
			case CCV_IO_BGRA_RAW:
			case CCV_IO_ABGR_RAW:
				ctype = CCV_8U | CCV_C4;
				break;
			case CCV_IO_GRAY_RAW:
			default:
				/* default one */
				break;
		}
		*x = FUNC8(rows, cols, ctype | CCV_NO_DATA_ALLOC, data, 0);
		(*x)->step = scanline;
	} else {
		switch (type & 0xFF)
		{
			case CCV_IO_RGB_RAW:
				FUNC5(x, data, type, rows, cols, scanline);
				break;
			case CCV_IO_RGBA_RAW:
				FUNC6(x, data, type, rows, cols, scanline);
				break;
			case CCV_IO_ARGB_RAW:
				FUNC1(x, data, type, rows, cols, scanline);
				break;
			case CCV_IO_BGR_RAW:
				FUNC2(x, data, type, rows, cols, scanline);
				break;
			case CCV_IO_BGRA_RAW:
				FUNC3(x, data, type, rows, cols, scanline);
				break;
			case CCV_IO_ABGR_RAW:
				FUNC0(x, data, type, rows, cols, scanline);
				break;
			case CCV_IO_GRAY_RAW:
				FUNC4(x, data, type, rows, cols, scanline);
				break;
		}
	}
	if (*x != 0)
		FUNC9(*x);
	return CCV_IO_FINAL;
}