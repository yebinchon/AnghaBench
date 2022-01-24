#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sfmt_t ;
typedef  int /*<<< orphan*/  ccv_matrix_t ;
struct TYPE_11__ {int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ ccv_dense_matrix_t ;
struct TYPE_12__ {int lighting; int /*<<< orphan*/  contrast; int /*<<< orphan*/  saturation; int /*<<< orphan*/  brightness; } ;
typedef  TYPE_2__ ccv_cnnp_random_jitter_t ;

/* Variables and functions */
 scalar_t__ CCV_C3 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ * const,int*,int,int) ; 

__attribute__((used)) static void FUNC9(ccv_dense_matrix_t* image, const ccv_cnnp_random_jitter_t random_jitter, sfmt_t* const sfmt)
{
	FUNC3(sfmt && FUNC0(image->type) == CCV_C3);
	int idx[4] = {0, 1, 2, 3};
	FUNC8(sfmt, idx, 4, sizeof(int));
	int i;
	for (i = 0; i < 4; i++)
		// change the applying order
		switch (idx[i])
		{
			case 0:
				if (random_jitter.brightness == 0)
					break;
				// introduce some brightness changes to the original image
				FUNC6(image, (ccv_matrix_t**)&image, 0, FUNC2(sfmt, random_jitter.brightness));
				break;
			case 1:
				// introduce some saturation changes to the original image
				if (random_jitter.saturation == 0)
					break;
				FUNC5(image, &image, 0, FUNC2(sfmt, random_jitter.saturation));
				break;
			case 2:
				// introduce some contrast changes to the original image
				if (random_jitter.contrast == 0)
					break;
				FUNC4(image, &image, 0, FUNC2(sfmt, random_jitter.contrast));
				break;
			case 3:
				if (random_jitter.lighting == 0)
					break;
				FUNC1(image, FUNC7(sfmt) * random_jitter.lighting, FUNC7(sfmt) * random_jitter.lighting, FUNC7(sfmt) * random_jitter.lighting);
				break;
		}
}