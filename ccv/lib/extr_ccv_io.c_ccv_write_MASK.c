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
 int CCV_IO_ANY_FILE ; 
#define  CCV_IO_BINARY_FILE 130 
 int CCV_IO_ERROR ; 
 int CCV_IO_FINAL ; 
#define  CCV_IO_JPEG_FILE 129 
#define  CCV_IO_PNG_FILE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 

int FUNC6(ccv_dense_matrix_t* mat, char* out, int* len, int type, void* conf)
{
	FILE* fd = 0;
	if (type & CCV_IO_ANY_FILE)
	{
		fd = FUNC5(out, "wb");
		if (!fd)
			return CCV_IO_ERROR;
	}
	switch (type)
	{
		case CCV_IO_JPEG_FILE:
#ifdef HAVE_LIBJPEG
			_ccv_write_jpeg_fd(mat, fd, conf);
			if (len != 0)
				*len = 0;
#else
			FUNC3(0 && "ccv_write requires libjpeg support for JPEG format");
#endif
			break;
		case CCV_IO_PNG_FILE:
#ifdef HAVE_LIBPNG
			_ccv_write_png_fd(mat, fd, conf);
			if (len != 0)
				*len = 0;
#else
			FUNC3(0 && "ccv_write requires libpng support for PNG format");
#endif
			break;
		case CCV_IO_BINARY_FILE:
			FUNC0(mat, fd, conf);
			if (len != 0)
				*len = 0;
			break;
	}
	if (type & CCV_IO_ANY_FILE)
		FUNC4(fd);
	return CCV_IO_FINAL;
}