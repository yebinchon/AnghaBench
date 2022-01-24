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
typedef  int int32_t ;

/* Variables and functions */
 int POINTER_BYTES ; 
 char** FUNC0 (int) ; 
 char** FUNC1 (char**,int) ; 
 size_t FUNC2 (char*) ; 
 char* FUNC3 (char**,char const*) ; 

char **FUNC4(char *z, const char *delim, int32_t *num) {
  *num = 0;
  int32_t size = 4;

  char **split = FUNC0(POINTER_BYTES * size);

  for (char *p = FUNC3(&z, delim); p != NULL; p = FUNC3(&z, delim)) {
    size_t len = FUNC2(p);
    if (len == 0) {
      continue;
    }

    split[(*num)++] = p;
    if ((*num) >= size) {
      size = (size << 1);
      split = FUNC1(split, POINTER_BYTES * size);
    }
  }

  return split;
}