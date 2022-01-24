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
typedef  int /*<<< orphan*/  TAOS_ROW ;
typedef  int /*<<< orphan*/  TAOS_RES ;
typedef  int /*<<< orphan*/  TAOS_FIELD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

void FUNC4(void *param, TAOS_RES *res, TAOS_ROW row)
{
  // in this simple demo, it just print out the result
  char temp[128];

  TAOS_FIELD *fields = FUNC1(res);
  int         numFields = FUNC2(res);

  FUNC3(temp, row, fields, numFields);

  FUNC0("\n%s\n", temp);
}