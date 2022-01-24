#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int ssize_t ;
struct TYPE_14__ {double confidence; } ;
struct TYPE_15__ {int x; int y; int width; int height; } ;
struct TYPE_16__ {int pnum; TYPE_3__* part; TYPE_4__ classification; TYPE_5__ rect; } ;
typedef  TYPE_6__ ccv_root_comp_t ;
typedef  int /*<<< orphan*/  ccv_dpm_mixture_model_t ;
typedef  int /*<<< orphan*/  ccv_dense_matrix_t ;
struct TYPE_17__ {int rnum; } ;
typedef  TYPE_7__ ccv_array_t ;
struct TYPE_12__ {double confidence; } ;
struct TYPE_11__ {int x; int y; int width; int height; } ;
struct TYPE_13__ {TYPE_2__ classification; TYPE_1__ rect; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int CCV_IO_ANY_FILE ; 
 int CCV_IO_GRAY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*) ; 
 scalar_t__ FUNC2 (TYPE_7__*,int) ; 
 int /*<<< orphan*/  ccv_dpm_default_params ; 
 TYPE_7__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
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
	int i, j;
	FUNC7();
	ccv_dense_matrix_t* image = 0;
	FUNC9(argv[1], &image, CCV_IO_ANY_FILE);
	ccv_dpm_mixture_model_t* model = FUNC5(argv[2]);
	if (image != 0)
	{
		unsigned int elapsed_time = FUNC14();
		ccv_array_t* seq = FUNC3(image, &model, 1, ccv_dpm_default_params);
		elapsed_time = FUNC14() - elapsed_time;
		if (seq)
		{
			for (i = 0; i < seq->rnum; i++)
			{
				ccv_root_comp_t* comp = (ccv_root_comp_t*)FUNC2(seq, i);
				FUNC18("%d %d %d %d %f %d\n", comp->rect.x, comp->rect.y, comp->rect.width, comp->rect.height, comp->classification.confidence, comp->pnum);
				for (j = 0; j < comp->pnum; j++)
					FUNC18("| %d %d %d %d %f\n", comp->part[j].rect.x, comp->part[j].rect.y, comp->part[j].rect.width, comp->part[j].rect.height, comp->part[j].classification.confidence);
			}
			FUNC18("total : %d in time %dms\n", seq->rnum, elapsed_time);
			FUNC1(seq);
		} else {
			FUNC18("elapsed time %dms\n", elapsed_time);
		}
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
				FUNC9(file, &image, CCV_IO_GRAY | CCV_IO_ANY_FILE);
				FUNC0(image != 0);
				ccv_array_t* seq = FUNC3(image, &model, 1, ccv_dpm_default_params);
				if (seq != 0)
				{
					for (i = 0; i < seq->rnum; i++)
					{
						ccv_root_comp_t* comp = (ccv_root_comp_t*)FUNC2(seq, i);
						FUNC18("%s %d %d %d %d %f %d\n", file, comp->rect.x, comp->rect.y, comp->rect.width, comp->rect.height, comp->classification.confidence, comp->pnum);
						for (j = 0; j < comp->pnum; j++)
							FUNC18("| %d %d %d %d %f\n", comp->part[j].rect.x, comp->part[j].rect.y, comp->part[j].rect.width, comp->part[j].rect.height, comp->part[j].classification.confidence);
					}
					FUNC1(seq);
				}
				FUNC8(image);
			}
			FUNC13(file);
			FUNC11(r);
		}
	}
	FUNC6();
	FUNC4(model);
	return 0;
}