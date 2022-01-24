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
typedef  int /*<<< orphan*/  TupleDesc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_COLUMN ; 
 int /*<<< orphan*/  ERROR ; 
 int SPI_ERROR_NOATTRIBUTE ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 

__attribute__((used)) static int
FUNC5(TupleDesc rowDescriptor, const char *columnName)
{
	int columnIndex = FUNC1(rowDescriptor, columnName);
	if (columnIndex == SPI_ERROR_NOATTRIBUTE)
	{
		FUNC2(ERROR, (FUNC3(ERRCODE_UNDEFINED_COLUMN),
						FUNC4("could not find column name \"%s\"", columnName)));
	}

	FUNC0(columnIndex >= 1);
	return columnIndex;
}