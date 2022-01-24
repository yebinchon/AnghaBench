#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {double* f32; } ;
struct TYPE_6__ {TYPE_1__ data; } ;
typedef  TYPE_2__ ccv_dense_matrix_t ;
typedef  int /*<<< orphan*/  ccv_categorized_t ;
typedef  int /*<<< orphan*/  ccv_array_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int CCV_32F ; 
 int CCV_C3 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,float*,int /*<<< orphan*/ *) ; 

int FUNC11(int argc, char** argv)
{
	FUNC6();
	FUNC0(argc == 5);
	int num1 = FUNC1(argv[2]);
	int num2 = FUNC1(argv[4]);
	FILE* r1 = FUNC8(argv[1], "rb");
	FILE* r2 = FUNC8(argv[3], "rb");
	if (r1 && r2)
	{
		int i, j, k;
		unsigned char bytes[32 * 32 + 1];
		double mean[3] = {};
		ccv_array_t* categorizeds = FUNC2(sizeof(ccv_categorized_t), num1, 0);
		for (k = 0; k < num1; k++)
		{
			FUNC9(bytes, 32 * 32 + 1, 1, r1);
			double per_mean[3] = {};
			int c = bytes[0];
			ccv_dense_matrix_t* a = FUNC5(32, 32, CCV_32F | CCV_C3, 0, 0);
			for (i = 0; i < 32; i++)
				for (j = 0; j < 32; j++)
					per_mean[0] += (a->data.f32[(j + i * 32) * 3] = bytes[j + i * 32 + 1] * 2. / 255.);
			FUNC9(bytes, 32 * 32, 1, r1);
			for (i = 0; i < 32; i++)
				for (j = 0; j < 32; j++)
					per_mean[1] += (a->data.f32[(j + i * 32) * 3 + 1] = bytes[j + i * 32] * 2. / 255.);
			FUNC9(bytes, 32 * 32, 1, r1);
			for (i = 0; i < 32; i++)
				for (j = 0; j < 32; j++)
					per_mean[2] += (a->data.f32[(j + i * 32) * 3 + 2] = bytes[j + i * 32] * 2. / 255.);
			ccv_categorized_t categorized = FUNC4(c, a, 0);
			FUNC3(categorizeds, &categorized);
			mean[0] += per_mean[0] / (32 * 32);
			mean[1] += per_mean[1] / (32 * 32);
			mean[2] += per_mean[2] / (32 * 32);
		}
		float meanf[3];
		meanf[0] = mean[0] / num1;
		meanf[1] = mean[1] / num1;
		meanf[2] = mean[2] / num1;
		ccv_array_t* tests = FUNC2(sizeof(ccv_categorized_t), num2, 0);
		for (k = 0; k < num2; k++)
		{
			FUNC9(bytes, 32 * 32 + 1, 1, r2);
			int c = bytes[0];
			ccv_dense_matrix_t* a = FUNC5(32, 32, CCV_32F | CCV_C3, 0, 0);
			for (i = 0; i < 32; i++)
				for (j = 0; j < 32; j++)
					a->data.f32[(j + i * 32) * 3] = bytes[j + i * 32 + 1] * 2. / 255. - meanf[0];
			FUNC9(bytes, 32 * 32, 1, r2);
			for (i = 0; i < 32; i++)
				for (j = 0; j < 32; j++)
					a->data.f32[(j + i * 32) * 3 + 1] = bytes[j + i * 32] * 2. / 255. - meanf[1];
			FUNC9(bytes, 32 * 32, 1, r2);
			for (i = 0; i < 32; i++)
				for (j = 0; j < 32; j++)
					a->data.f32[(j + i * 32) * 3 + 2] = bytes[j + i * 32] * 2. / 255. - meanf[2];
			ccv_categorized_t categorized = FUNC4(c, a, 0);
			FUNC3(tests, &categorized);
		}
		FUNC10(categorizeds, 256, meanf, tests);
	}
	if (r1)
		FUNC7(r1);
	if (r2)
		FUNC7(r2);
	return 0;
}