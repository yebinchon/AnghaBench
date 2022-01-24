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

/* Variables and functions */
 struct tm* FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,struct tm*) ; 

void FUNC4(time_t t, char *buf, int buflen) {
  FUNC1(buf, 0, (size_t)buflen);
  char ts[30] = {0};

  struct tm *ptm;
  time_t     tt = t / 1000;
  ptm = FUNC0(&tt);
  FUNC3(ts, 64, "%Y-%m-%d %H:%M:%S", ptm);
  FUNC2(buf, "%s.%03ld", ts, t % 1000);
}