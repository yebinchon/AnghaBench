#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ccv_scd_classifier_cascade_t ;
typedef  int /*<<< orphan*/  ccv_dense_matrix_t ;
struct TYPE_7__ {int x; int y; int width; int height; } ;
struct TYPE_8__ {TYPE_1__ rect; } ;
typedef  TYPE_2__ ccv_comp_t ;
struct TYPE_9__ {int rnum; } ;
typedef  TYPE_3__ ccv_array_t ;

/* Variables and functions */
 int CCV_IO_ANY_FILE ; 
 int CCV_IO_RGB_COLOR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 scalar_t__ FUNC1 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*) ; 
 int /*<<< orphan*/  ccv_scd_default_params ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int,int,int) ; 

int FUNC8(int argc, char** argv)
{
	ccv_dense_matrix_t* image = 0;
	FUNC3(argv[1], &image, CCV_IO_RGB_COLOR | CCV_IO_ANY_FILE);
	ccv_scd_classifier_cascade_t* cascade = FUNC5(argv[2]);
	ccv_array_t* faces = FUNC6(image, &cascade, 1, ccv_scd_default_params);
	int i;
	for (i = 0; i < faces->rnum; i++)
	{
		ccv_comp_t* face = (ccv_comp_t*)FUNC1(faces, i);
		FUNC7("%d %d %d %d\n", face->rect.x, face->rect.y, face->rect.width, face->rect.height);
	}
	FUNC0(faces);
	FUNC4(cascade);
	FUNC2(image);
	return 0;
}