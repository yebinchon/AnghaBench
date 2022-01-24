#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct option {char* member_0; int member_1; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; } ;
typedef  int /*<<< orphan*/  ccv_cnnp_dataframe_t ;
struct TYPE_9__ {int /*<<< orphan*/  filename; } ;
struct TYPE_10__ {TYPE_1__ file; } ;
typedef  TYPE_2__ ccv_categorized_t ;
struct TYPE_11__ {int rnum; } ;
typedef  TYPE_3__ ccv_array_t ;

/* Variables and functions */
 TYPE_3__* FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__* const) ; 
 scalar_t__ FUNC3 (TYPE_3__* const,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_3__* const) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int,char**,char*,struct option*,int*) ; 
 char* optarg ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ * const,int /*<<< orphan*/ * const,TYPE_3__* const) ; 

int FUNC10(int argc, char** argv)
{
	FUNC6();
	static struct option imagenet_options[] = {
		/* help */
		{"help", 0, 0, 0},
		/* required parameters */
		{"train-list", 1, 0, 0},
		{"test-list", 1, 0, 0},
		/* optional parameters */
		{"base-dir", 1, 0, 0},
		{0, 0, 0, 0}
	};
	int c;
	char* train_list = 0;
	char* test_list = 0;
	char* base_dir = 0;
	while (FUNC8(argc, argv, "", imagenet_options, &c) != -1)
	{
		switch (c)
		{
			case 0:
				FUNC7(0);
			case 1:
				train_list = optarg;
				break;
			case 2:
				test_list = optarg;
				break;
			case 3:
				base_dir = optarg;
				break;
		}
	}
	ccv_array_t* const train_set = FUNC0(train_list, base_dir);
	ccv_cnnp_dataframe_t* const train_data = FUNC5(train_set);
	ccv_array_t* const test_set = FUNC0(test_list, base_dir);
	ccv_cnnp_dataframe_t* const test_data = FUNC5(test_set);
	FUNC9(128, train_data, test_data, test_set);
	FUNC4(train_data);
	FUNC4(test_data);
	int i;
	for (i = 0; i < train_set->rnum; i++)
		FUNC1(((ccv_categorized_t*)FUNC3(train_set, i))->file.filename);
	FUNC2(train_set);
	for (i = 0; i < test_set->rnum; i++)
		FUNC1(((ccv_categorized_t*)FUNC3(test_set, i))->file.filename);
	FUNC2(test_set);
	return 0;
}