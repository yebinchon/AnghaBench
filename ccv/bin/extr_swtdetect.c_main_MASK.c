#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int ssize_t ;
struct TYPE_6__ {int x; int y; int width; int height; } ;
typedef  TYPE_1__ ccv_rect_t ;
typedef  int /*<<< orphan*/  ccv_dense_matrix_t ;
struct TYPE_7__ {int rnum; } ;
typedef  TYPE_2__ ccv_array_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int CCV_IO_ANY_FILE ; 
 int CCV_IO_GRAY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  ccv_swt_default_params ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 unsigned int FUNC11 () ; 
 int FUNC12 (char**,size_t*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (char) ; 
 scalar_t__ FUNC14 (size_t) ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 

int FUNC16(int argc, char** argv)
{
	FUNC3();
	ccv_dense_matrix_t* image = 0;
	FUNC5(argv[1], &image, CCV_IO_GRAY | CCV_IO_ANY_FILE);
	if (image != 0)
	{
		unsigned int elapsed_time = FUNC11();
		ccv_array_t* words = FUNC6(image, ccv_swt_default_params);
		elapsed_time = FUNC11() - elapsed_time;
		if (words)
		{
			int i;
			for (i = 0; i < words->rnum; i++)
			{
				ccv_rect_t* rect = (ccv_rect_t*)FUNC1(words, i);
				FUNC15("%d %d %d %d\n", rect->x, rect->y, rect->width, rect->height);
			}
			FUNC15("total : %d in time %dms\n", words->rnum, elapsed_time);
			FUNC0(words);
		}
		FUNC4(image);
	} else {
		FILE* r = FUNC9(argv[1], "rt");
		if (argc == 3)
			FUNC7(argv[2]);
		if(r)
		{
			size_t len = 1024;
			char* file = (char*)FUNC14(len);
			ssize_t read;
			while((read = FUNC12(&file, &len, r)) != -1)
			{
				while(read > 1 && FUNC13(file[read - 1]))
					read--;
				file[read] = 0;
				image = 0;
				FUNC15("%s\n", file);
				FUNC5(file, &image, CCV_IO_GRAY | CCV_IO_ANY_FILE);
				ccv_array_t* words = FUNC6(image, ccv_swt_default_params);
				int i;
				for (i = 0; i < words->rnum; i++)
				{
					ccv_rect_t* rect = (ccv_rect_t*)FUNC1(words, i);
					FUNC15("%d %d %d %d\n", rect->x, rect->y, rect->width, rect->height);
				}
				FUNC0(words);
				FUNC4(image);
			}
			FUNC10(file);
			FUNC8(r);
		}
	}
	FUNC2();
	return 0;
}