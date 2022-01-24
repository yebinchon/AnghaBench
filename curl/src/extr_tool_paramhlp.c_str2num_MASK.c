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
typedef  int /*<<< orphan*/  ParameterError ;

/* Variables and functions */
 scalar_t__ ERANGE ; 
 int /*<<< orphan*/  PARAM_BAD_NUMERIC ; 
 int /*<<< orphan*/  PARAM_NUMBER_TOO_LARGE ; 
 int /*<<< orphan*/  PARAM_OK ; 
 scalar_t__ errno ; 
 int FUNC0 (char const*) ; 
 long FUNC1 (char const*,char**,int) ; 

ParameterError FUNC2(long *val, const char *str)
{
  if(str) {
    char *endptr;
    long num;
    errno = 0;
    num = FUNC1(str, &endptr, 10);
    if(errno == ERANGE)
      return PARAM_NUMBER_TOO_LARGE;
    if((endptr != str) && (endptr == str + FUNC0(str))) {
      *val = num;
      return PARAM_OK;  /* Ok */
    }
  }
  return PARAM_BAD_NUMERIC; /* badness */
}