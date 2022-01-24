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
typedef  scalar_t__ sqlite3_int64 ;

/* Variables and functions */
 int /*<<< orphan*/  SQLITE_STATUS_MEMORY_USED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*,int*,int /*<<< orphan*/ ) ; 

sqlite3_int64 FUNC1(void){
  int n, mx;
  sqlite3_int64 res;
  FUNC0(SQLITE_STATUS_MEMORY_USED, &n, &mx, 0);
  res = (sqlite3_int64)n;  /* Work around bug in Borland C. Ticket #3216 */
  return res;
}