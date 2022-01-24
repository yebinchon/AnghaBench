#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct option {char* member_0; int member_1; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; } ;
typedef  int /*<<< orphan*/  ccv_icf_classifier_cascade_t ;
struct TYPE_11__ {int /*<<< orphan*/  yaw; int /*<<< orphan*/  pitch; int /*<<< orphan*/  roll; int /*<<< orphan*/  b; int /*<<< orphan*/  a; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_10__ {char* filename; TYPE_2__ pose; } ;
typedef  TYPE_1__ ccv_file_info_t ;
typedef  TYPE_2__ ccv_decimal_pose_t ;
struct TYPE_12__ {int rnum; } ;
typedef  TYPE_3__ ccv_array_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ EOF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 double FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (TYPE_3__*,int) ; 
 TYPE_3__* FUNC5 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_3__*,double) ; 
 int /*<<< orphan*/ * FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC17 (int,char**,char*,struct option*,int*) ; 
 scalar_t__ FUNC18 (int) ; 
 char* optarg ; 
 int FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (char*,char*,int) ; 

int FUNC21(int argc, char** argv)
{
	static struct option icf_options[] = {
		/* help */
		{"help", 0, 0, 0},
		/* required parameters */
		{"positive-list", 1, 0, 0},
		{"classifier-cascade", 1, 0, 0},
		{"acceptance", 1, 0, 0},
		/* optional parameters */
		{"base-dir", 1, 0, 0},
		{0, 0, 0, 0}
	};
	char* positive_list = 0;
	char* classifier_cascade = 0;
	char* base_dir = 0;
	double acceptance = 0;
	int i, k;
	while (FUNC17(argc, argv, "", icf_options, &k) != -1)
	{
		switch (k)
		{
			case 0:
				FUNC12();
			case 1:
				positive_list = optarg;
				break;
			case 2:
				classifier_cascade = optarg;
				break;
			case 3:
				acceptance = FUNC1(optarg);
				break;
			case 4:
				base_dir = optarg;
				break;
		}
	}
	FUNC0(positive_list != 0);
	FUNC0(classifier_cascade != 0);
	FUNC8(512 * 1024 * 1024);
	FILE* r0 = FUNC14(positive_list, "r");
	FUNC0(r0 && "positive-list doesn't exists");
	char* file = (char*)FUNC18(1024);
	ccv_decimal_pose_t pose;
	ccv_array_t* posfiles = FUNC5(sizeof(ccv_file_info_t), 32, 0);
	int dirlen = (base_dir != 0) ? FUNC19(base_dir) + 1 : 0;
	// roll pitch yaw
	while (FUNC16(r0, "%s %f %f %f %f %f %f %f", file, &pose.x, &pose.y, &pose.a, &pose.b, &pose.roll, &pose.pitch, &pose.yaw) != EOF)
	{
		ccv_file_info_t file_info;
		file_info.filename = (char*)FUNC2(1024);
		if (base_dir != 0)
		{
			FUNC20(file_info.filename, base_dir, 1024);
			file_info.filename[dirlen - 1] = '/';
		}
		FUNC20(file_info.filename + dirlen, file, 1024 - dirlen);
		// blow up pose a little bit for INRIA data (16px on four strides)
		file_info.pose = pose;
		FUNC6(posfiles, &file_info);
	}
	FUNC13(r0);
	FUNC15(file);
	ccv_icf_classifier_cascade_t* cascade = FUNC10(classifier_cascade);
	FUNC0(cascade && "classifier cascade doesn't exists");
	FUNC9(cascade, posfiles, acceptance);
	FUNC11(cascade, classifier_cascade);
	for (i = 0; i < posfiles->rnum; i++)
	{
		ccv_file_info_t* file_info = (ccv_file_info_t*)FUNC4(posfiles, i);
		FUNC15(file_info->filename);
	}
	FUNC3(posfiles);
	FUNC7();
	return 0;
}