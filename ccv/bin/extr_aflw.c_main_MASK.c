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
typedef  int /*<<< orphan*/  gsl_rng ;
struct TYPE_4__ {int width; int height; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_1__ ccv_rect_t ;
typedef  int /*<<< orphan*/  ccv_dense_matrix_t ;
struct TYPE_5__ {double roll; double pitch; double yaw; } ;
typedef  TYPE_2__ ccv_decimal_pose_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int CCV_IO_ANY_FILE ; 
 int CCV_IO_GRAY ; 
 int /*<<< orphan*/  CCV_IO_PNG_FILE ; 
 int CCV_IO_RGB_COLOR ; 
 double CCV_PI ; 
 scalar_t__ EOF ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,double,double) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int*,double*,double*,double*) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gsl_rng_default ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,char*,char*,int) ; 
 int FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*,int) ; 

int FUNC17(int argc, char** argv)
{
#ifdef HAVE_GSL
	assert(argc == 4);
	gsl_rng* rng = gsl_rng_alloc(gsl_rng_default);
	FILE* r = fopen(argv[1], "r");
	char* base_dir = argv[2];
	int dirlen = (base_dir != 0) ? strlen(base_dir) + 1 : 0;
	char* file = (char*)malloc(1024);
	int i = 0;
	ccv_rect_t rect;
	ccv_decimal_pose_t pose;
	// rect.x, rect.y, rect.width, rect.height roll pitch yaw
	while (fscanf(r, "%s %d %d %d %d %f %f %f", file, &rect.x, &rect.y, &rect.width, &rect.height, &pose.roll, &pose.pitch, &pose.yaw) != EOF)
	{
		if (pose.pitch < CCV_PI * 22.5 / 180 && pose.pitch > -CCV_PI * 22.5 / 180 &&
			pose.roll < CCV_PI * 22.5 / 180 && pose.roll > -CCV_PI * 22.5 / 180 &&
			pose.yaw < CCV_PI * 20 / 180 && pose.yaw > -CCV_PI * 20 / 180 &&
			rect.width >= 15 && rect.height >= 15)
		{
			// resize to a more proper sizes
			char* filename = (char*)malloc(1024);
			strncpy(filename, base_dir, 1024);
			filename[dirlen - 1] = '/';
			strncpy(filename + dirlen, file, 1024 - dirlen);
			ccv_dense_matrix_t* image = 0;
			ccv_read(filename, &image, CCV_IO_ANY_FILE | CCV_IO_GRAY);
			char* savefile = (char*)malloc(1024);
			ccv_dense_matrix_t* b = _ccv_aflw_slice_with_rect(rng, image, rect, ccv_size(48, 48), ccv_margin(0, 0, 0, 0), 10, 0.1, 0.05);
			snprintf(savefile, 1024, "%s/aflw-%07d-bw.png", argv[3], i);
			ccv_write(b, savefile, 0, CCV_IO_PNG_FILE, 0);
			ccv_matrix_free(b);
			ccv_matrix_free(image);
			image = 0;
			ccv_read(filename, &image, CCV_IO_ANY_FILE | CCV_IO_RGB_COLOR);
			b = _ccv_aflw_slice_with_rect(rng, image, rect, ccv_size(48, 48), ccv_margin(0, 0, 0, 0), 10, 0.1, 0.05);
			snprintf(savefile, 1024, "%s/aflw-%07d-rgb.png", argv[3], i);
			ccv_write(b, savefile, 0, CCV_IO_PNG_FILE, 0);
			ccv_matrix_free(b);
			ccv_matrix_free(image);
			i++;
			free(savefile);
			free(filename);
		}
	}
	fclose(r);
	free(file);
	gsl_rng_free(rng);
#else
	FUNC1(0 && "aflw requires GSL library support");
#endif
	return 0;
}