#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  ccv_dense_matrix_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int CCV_8U ; 
 int CCV_IO_ANY_FILE ; 
#define  CCV_IO_BINARY_FILE 131 
#define  CCV_IO_BMP_FILE 130 
 int CCV_IO_FINAL ; 
#define  CCV_IO_JPEG_FILE 129 
#define  CCV_IO_PNG_FILE 128 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (unsigned char*,char*,int) ; 

__attribute__((used)) static int FUNC9(FILE* fd, ccv_dense_matrix_t** x, int type)
{
	int ctype = (type & 0xF00) ? CCV_8U | ((type & 0xF00) >> 8) : 0;
	if ((type & 0XFF) == CCV_IO_ANY_FILE)
	{
		unsigned char sig[8];
		(void) FUNC6(sig, 1, 8, fd);
		if (FUNC8(sig, "\x89\x50\x4e\x47\xd\xa\x1a\xa", 8) == 0)
			type = CCV_IO_PNG_FILE;
		else if (FUNC8(sig, "\xff\xd8\xff", 3) == 0)
			type = CCV_IO_JPEG_FILE;
		else if (FUNC8(sig, "BM", 2) == 0)
			type = CCV_IO_BMP_FILE;
		else if (FUNC8(sig, "CCVBINDM", 8) == 0)
			type = CCV_IO_BINARY_FILE;
		FUNC7(fd, 0, SEEK_SET);
	}
	switch (type & 0XFF)
	{
#ifdef HAVE_LIBJPEG
		case CCV_IO_JPEG_FILE:
			_ccv_read_jpeg_fd(fd, x, ctype);
			break;
#endif
#ifdef HAVE_LIBPNG
		case CCV_IO_PNG_FILE:
			_ccv_read_png_fd(fd, x, ctype);
			break;
#endif
		case CCV_IO_BMP_FILE:
			FUNC1(fd, x, ctype);
			break;
		case CCV_IO_BINARY_FILE:
			FUNC0(fd, x, ctype);
	}
	if (*x != 0)
		FUNC4(*x);
	if (type & CCV_IO_ANY_FILE)
		FUNC5(fd);
	return CCV_IO_FINAL;
}