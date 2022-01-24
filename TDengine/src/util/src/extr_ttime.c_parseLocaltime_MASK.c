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
struct tm {int /*<<< orphan*/  member_0; } ;
typedef  int int64_t ;
typedef  int int32_t ;

/* Variables and functions */
 int TSDB_TIME_PRECISION_MILLI ; 
 int FUNC0 (struct tm*) ; 
 int FUNC1 (char*,char**,int) ; 
 char* FUNC2 (char*,char*,struct tm*) ; 

int32_t FUNC3(char* timestr, int64_t* time, int32_t timePrec) {
  *time = 0;
  struct tm tm = {0};

  char* str = FUNC2(timestr, "%Y-%m-%d %H:%M:%S", &tm);
  if (str == NULL) {
    return -1;
  }

  /* mktime will be affected by TZ, set by using taos_options */
  int64_t seconds = FUNC0(&tm);
  int64_t fraction = 0;

  if (*str == '.') {
    /* parse the second fraction part */
    if ((fraction = FUNC1(str + 1, &str, timePrec)) < 0) {
      return -1;
    }
  }

  int64_t factor = (timePrec == TSDB_TIME_PRECISION_MILLI) ? 1000 : 1000000;
  *time = factor * seconds + fraction;

  return 0;
}