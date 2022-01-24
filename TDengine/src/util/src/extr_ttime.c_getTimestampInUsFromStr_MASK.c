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
typedef  int /*<<< orphan*/  int64_t ;
typedef  int int32_t ;

/* Variables and functions */
 scalar_t__ errno ; 
 int FUNC0 (int /*<<< orphan*/ ,char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char**,int) ; 

int32_t FUNC2(char* token, int32_t tokenlen, int64_t* ts) {
  errno = 0;
  char* endPtr = NULL;

  /* get the basic numeric value */
  int64_t timestamp = FUNC1(token, &endPtr, 10);
  if (errno != 0) {
    return -1;
  }

  return FUNC0(timestamp, token[tokenlen - 1], ts);
}