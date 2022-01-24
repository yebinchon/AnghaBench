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
 char* FUNC0 (char*) ; 
 int FUNC1 (struct tm*) ; 
 int FUNC2 (char*,char**,int) ; 
 int FUNC3 (char*,int*) ; 
 char* FUNC4 (char*,char*,struct tm*) ; 
 int FUNC5 (struct tm*) ; 

int32_t FUNC6(char* timestr, int64_t* time, int32_t timePrec) {
  int64_t factor = (timePrec == TSDB_TIME_PRECISION_MILLI) ? 1000 : 1000000;
  int64_t tzOffset = 0;

  struct tm tm = {0};
  char*     str = FUNC4(timestr, "%Y-%m-%dT%H:%M:%S", &tm);
  if (str == NULL) {
    return -1;
  }

/* mktime will be affected by TZ, set by using taos_options */
#ifdef WINDOWS
  int64_t seconds = gmtime(&tm); 
#else
  int64_t seconds = FUNC5(&tm);
#endif

  int64_t fraction = 0;
  str = FUNC0(timestr);

  if (str[0] == 'Z' || str[0] == 'z') {
    /* utc time, no millisecond, return directly*/
    *time = seconds * factor;
  } else if (str[0] == '.') {
    str += 1;
    if ((fraction = FUNC2(str, &str, timePrec)) < 0) {
      return -1;
    }

    *time = seconds * factor + fraction;

    char seg = str[0];
    if (seg != 'Z' && seg != 'z' && seg != '+' && seg != '-') {
      return -1;
    } else if (seg == '+' || seg == '-') {
      // parse the timezone
      if (FUNC3(str, &tzOffset) == -1) {
        return -1;
      }

      *time += tzOffset * factor;
    }

  } else if (str[0] == '+' || str[0] == '-') {
    *time = seconds * factor + fraction;

    // parse the timezone
    if (FUNC3(str, &tzOffset) == -1) {
      return -1;
    }

    *time += tzOffset * factor;
  } else {
    return -1;
  }

  return 0;
}