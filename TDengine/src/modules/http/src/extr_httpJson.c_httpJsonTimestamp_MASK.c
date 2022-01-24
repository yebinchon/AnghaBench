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
typedef  int time_t ;
struct tm {int dummy; } ;
typedef  int int64_t ;
typedef  int /*<<< orphan*/  JsonBuf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 struct tm* FUNC1 (int*) ; 
 scalar_t__ FUNC2 (char*,int,char*,int) ; 
 scalar_t__ FUNC3 (char*,int,char*,struct tm*) ; 

void FUNC4(JsonBuf* buf, int64_t t, bool us) {
  char ts[35] = {0};
  struct tm *ptm;
  int precision = 1000;
  if (us) {
    precision = 1000000;
  }

  time_t tt = t / precision;
  ptm = FUNC1(&tt);
  int length = (int) FUNC3(ts, 35, "%Y-%m-%d %H:%M:%S", ptm);
  if (us) {
    length += FUNC2(ts + length, 8, ".%06ld", t % precision);
  } else {
    length += FUNC2(ts + length, 5, ".%03ld", t % precision);
  }

  FUNC0(buf, ts, length);
}