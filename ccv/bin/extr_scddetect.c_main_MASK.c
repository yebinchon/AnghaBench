#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int ssize_t ;
struct TYPE_13__ {int /*<<< orphan*/  size; } ;
typedef  TYPE_3__ ccv_scd_param_t ;
typedef  int /*<<< orphan*/  ccv_scd_classifier_cascade_t ;
typedef  int /*<<< orphan*/  ccv_dense_matrix_t ;
struct TYPE_12__ {double confidence; } ;
struct TYPE_11__ {int x; int y; int width; int height; } ;
struct TYPE_14__ {TYPE_2__ classification; TYPE_1__ rect; } ;
typedef  TYPE_4__ ccv_comp_t ;
struct TYPE_15__ {int rnum; } ;
typedef  TYPE_5__ ccv_array_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int CCV_IO_ANY_FILE ; 
 int CCV_IO_RGB_COLOR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 scalar_t__ FUNC2 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (char*) ; 
 TYPE_3__ ccv_scd_default_params ; 
 TYPE_5__* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int,TYPE_3__) ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 unsigned int FUNC15 () ; 
 int FUNC16 (char**,size_t*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (char) ; 
 scalar_t__ FUNC18 (size_t) ; 
 int /*<<< orphan*/  FUNC19 (char*,...) ; 

int FUNC20(int argc, char** argv)
{
	FUNC0(argc >= 3);
	int i;
	FUNC4();
	ccv_dense_matrix_t* image = 0;
	ccv_scd_classifier_cascade_t* cascade = FUNC8(argv[2]);
	FUNC6(argv[1], &image, CCV_IO_RGB_COLOR | CCV_IO_ANY_FILE);
	if (image != 0)
	{
		unsigned int elapsed_time = FUNC15();
		ccv_array_t* seq = FUNC9(image, &cascade, 1, ccv_scd_default_params);
		elapsed_time = FUNC15() - elapsed_time;
		for (i = 0; i < seq->rnum; i++)
		{
			ccv_comp_t* comp = (ccv_comp_t*)FUNC2(seq, i);
			FUNC19("%d %d %d %d %f\n", comp->rect.x, comp->rect.y, comp->rect.width, comp->rect.height, comp->classification.confidence);
		}
		FUNC19("total : %d in time %dms\n", seq->rnum, elapsed_time);
		FUNC1(seq);
		FUNC5(image);
	} else {
		FILE* r = FUNC13(argv[1], "rt");
		if (argc == 4)
			FUNC11(argv[3]);
		if(r)
		{
			size_t len = 1024;
			char* file = (char*)FUNC18(len);
			ssize_t read;
			while((read = FUNC16(&file, &len, r)) != -1)
			{
				while(read > 1 && FUNC17(file[read - 1]))
					read--;
				file[read] = 0;
				image = 0;
				FUNC6(file, &image, CCV_IO_RGB_COLOR | CCV_IO_ANY_FILE);
				FUNC0(image != 0);
				ccv_scd_param_t params = ccv_scd_default_params;
				params.size = FUNC10(24, 24);
				ccv_array_t* seq = FUNC9(image, &cascade, 1, params);
				FUNC19("%s %d\n", file, seq->rnum);
				for (i = 0; i < seq->rnum; i++)
				{
					ccv_comp_t* comp = (ccv_comp_t*)FUNC2(seq, i);
					FUNC19("%d %d %d %d %f\n", comp->rect.x, comp->rect.y, comp->rect.width, comp->rect.height, comp->classification.confidence);
				}
				FUNC1(seq);
				FUNC5(image);
			}
			FUNC14(file);
			FUNC12(r);
		}
	}
	FUNC7(cascade);
	FUNC3();
	return 0;
}