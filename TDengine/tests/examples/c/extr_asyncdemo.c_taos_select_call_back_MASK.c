#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* name; } ;
typedef  int /*<<< orphan*/  TAOS_RES ;
typedef  TYPE_1__ STable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  taos_retrieve_call_back ; 

void FUNC3(void *param, TAOS_RES *tres, int code)
{
  STable *pTable = (STable *)param;

  if (code == 0 && tres) {
    // asynchronous API to fetch a batch of records
    FUNC2(tres, taos_retrieve_call_back, pTable);

    // taos_fetch_row_a is a less efficient way to retrieve records since it call back app for every row
    // taos_fetch_row_a(tres, taos_fetch_row_call_back, pTable);
  }
  else {
    FUNC1("%s select failed, code:%d\n", pTable->name, code);
    FUNC0(1);
  }
}