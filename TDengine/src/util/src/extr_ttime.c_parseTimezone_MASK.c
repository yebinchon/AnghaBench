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
typedef  int int64_t ;
typedef  size_t int32_t ;

/* Variables and functions */
 char* FUNC0 (char*,char) ; 
 int FUNC1 (char*,int) ; 

int32_t FUNC2(char* str, int64_t* tzOffset) {
  int64_t hour = 0;

  int32_t i = 0;
  if (str[i] != '+' && str[i] != '-') {
    return -1;
  }

  i++;

  char* sep = FUNC0(&str[i], ':');
  if (sep != NULL) {
    int32_t len = sep - &str[i];

    hour = FUNC1(&str[i], len);
    i += len + 1;
  } else {
    hour = FUNC1(&str[i], 2);
    i += 2;
  }

  int64_t minute = FUNC1(&str[i], 2);
  if (minute > 59) {
    return -1;
  }

  if (str[0] == '+') {
    *tzOffset = -(hour * 3600 + minute * 60);
  } else {
    *tzOffset = hour * 3600 + minute * 60;
  }

  return 0;
}