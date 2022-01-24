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
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 double FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,double) ; 

int FUNC5(void)
{
    int32_t matrix[9];

    // Set the matrix to 90 degrees
    FUNC2(matrix, 90);
    FUNC3(matrix);
    FUNC4("degrees: %f\n", FUNC1(matrix));

    // Set the matrix to -45 degrees
    FUNC2(matrix, -45);
    FUNC3(matrix);
    FUNC4("degrees: %f\n", FUNC1(matrix));

    // flip horizontal
    FUNC0(matrix, 1, 0);
    FUNC3(matrix);
    FUNC4("degrees: %f\n", FUNC1(matrix));

    // flip vertical
    FUNC0(matrix, 0, 1);
    FUNC3(matrix);
    FUNC4("degrees: %f\n", FUNC1(matrix));

    return 0;

}