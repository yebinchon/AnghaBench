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
typedef  size_t int16_t ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int SUBL ; 
 int /*<<< orphan*/  FUNC1 (size_t*,size_t*,size_t*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * alpha ; 
 int /*<<< orphan*/  FUNC2 (size_t*,size_t*,int) ; 
 int /*<<< orphan*/  FUNC3 (size_t*,size_t*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (size_t*,size_t*,int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void FUNC5(int index, int16_t *buffer, int16_t *cbVec)
{
    int16_t cbVecTmp[4];
    int interpolation_length = FUNC0(4, index);
    int16_t ilow = index - interpolation_length;

    FUNC2(cbVec, buffer - index, index * 2);

    FUNC3(&cbVec[ilow], buffer - index - interpolation_length, alpha, interpolation_length, 15);
    FUNC4(cbVecTmp, buffer - interpolation_length, &alpha[interpolation_length - 1], interpolation_length, 15);
    FUNC1(&cbVec[ilow], &cbVec[ilow], cbVecTmp, interpolation_length, 0);

    FUNC2(cbVec + index, buffer - index, FUNC0(SUBL - index, index) * sizeof(*cbVec));
}