#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  ccv_dense_matrix_t ;

/* Variables and functions */
 int CCV_IO_ANY_FILE ; 
 int CCV_IO_GRAY ; 
 int /*<<< orphan*/  CCV_IO_PNG_FILE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(int argc, char** argv)
{
	ccv_dense_matrix_t* image = 0;
	FUNC0(argv[1], &image, CCV_IO_GRAY | CCV_IO_ANY_FILE);
	FUNC1(image, argv[2], 0, CCV_IO_PNG_FILE, 0);
	return 0;
}