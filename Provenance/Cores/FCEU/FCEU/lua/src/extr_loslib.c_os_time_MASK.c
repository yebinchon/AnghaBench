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
typedef  scalar_t__ time_t ;
struct tm {int /*<<< orphan*/  tm_isdst; void* tm_year; void* tm_mon; void* tm_mday; void* tm_hour; void* tm_min; void* tm_sec; } ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  lua_Number ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_TTABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (struct tm*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9 (lua_State *L) {
  time_t t;
  if (FUNC3(L, 1))  /* called without args? */
    t = FUNC8(NULL);  /* get current time */
  else {
    struct tm ts;
    FUNC2(L, 1, LUA_TTABLE);
    FUNC6(L, 1);  /* make sure table is at the top */
    ts.tm_sec = FUNC1(L, "sec", 0);
    ts.tm_min = FUNC1(L, "min", 0);
    ts.tm_hour = FUNC1(L, "hour", 12);
    ts.tm_mday = FUNC1(L, "day", -1);
    ts.tm_mon = FUNC1(L, "month", -1) - 1;
    ts.tm_year = FUNC1(L, "year", -1) - 1900;
    ts.tm_isdst = FUNC0(L, "isdst");
    t = FUNC7(&ts);
  }
  if (t == (time_t)(-1))
    FUNC4(L);
  else
    FUNC5(L, (lua_Number)t);
  return 1;
}