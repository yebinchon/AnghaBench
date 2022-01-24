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
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,char*) ; 

int FUNC1(const void* lhs, const void* rhs) {
  char* left = *(char**)lhs;
  char* right = *(char**)rhs;

  int32_t ret = FUNC0(left, right);

  if (ret == 0) {
    return 0;
  }

  return ret > 0 ? 1 : -1;
}