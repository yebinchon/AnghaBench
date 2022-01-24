#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  ccv_icf_classifier_cascade_t ;
typedef  int /*<<< orphan*/  ccv_dense_matrix_t ;
struct TYPE_9__ {double confidence; } ;
struct TYPE_8__ {int x; int y; int width; int height; } ;
struct TYPE_10__ {TYPE_2__ classification; TYPE_1__ rect; } ;
typedef  TYPE_3__ ccv_comp_t ;
struct TYPE_11__ {int rnum; } ;
typedef  TYPE_4__ ccv_array_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int CCV_IO_ANY_FILE ; 
 int CCV_IO_RGB_COLOR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 scalar_t__ FUNC2 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ccv_icf_default_params ; 
 TYPE_4__* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 unsigned int FUNC14 () ; 
 int FUNC15 (char**,size_t*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (char) ; 
 scalar_t__ FUNC17 (size_t) ; 
 int /*<<< orphan*/  FUNC18 (char*,...) ; 

int FUNC19(int argc, char** argv)
{
	FUNC0(argc >= 3);
	int i;
	FUNC4();
	ccv_dense_matrix_t* image = 0;
	ccv_icf_classifier_cascade_t* cascade = FUNC7(argv[2]);
	FUNC9(argv[1], &image, CCV_IO_ANY_FILE | CCV_IO_RGB_COLOR);
	if (image != 0)
	{
		unsigned int elapsed_time = FUNC14();
		ccv_array_t* seq = FUNC6(image, &cascade, 1, ccv_icf_default_params);
		elapsed_time = FUNC14() - elapsed_time;
		for (i = 0; i < seq->rnum; i++)
		{
			ccv_comp_t* comp = (ccv_comp_t*)FUNC2(seq, i);
			FUNC18("%d %d %d %d %f\n", comp->rect.x, comp->rect.y, comp->rect.width, comp->rect.height, comp->classification.confidence);
		}
		FUNC18("total : %d in time %dms\n", seq->rnum, elapsed_time);
		FUNC1(seq);
		FUNC8(image);
	} else {
		FILE* r = FUNC12(argv[1], "rt");
		if (argc == 4)
			FUNC10(argv[3]);
		if(r)
		{
			size_t len = 1024;
			char* file = (char*)FUNC17(len);
			ssize_t read;
			while((read = FUNC15(&file, &len, r)) != -1)
			{
				while(read > 1 && FUNC16(file[read - 1]))
					read--;
				file[read] = 0;
				image = 0;
				FUNC9(file, &image, CCV_IO_ANY_FILE | CCV_IO_RGB_COLOR);
				FUNC0(image != 0);
				ccv_array_t* seq = FUNC6(image, &cascade, 1, ccv_icf_default_params);
				for (i = 0; i < seq->rnum; i++)
				{
					ccv_comp_t* comp = (ccv_comp_t*)FUNC2(seq, i);
					FUNC18("%s %d %d %d %d %f\n", file, comp->rect.x, comp->rect.y, comp->rect.width, comp->rect.height, comp->classification.confidence);
				}
				FUNC1(seq);
				FUNC8(image);
			}
			FUNC13(file);
			FUNC11(r);
		}
	}
	FUNC5(cascade);
	FUNC3();
	return 0;
}