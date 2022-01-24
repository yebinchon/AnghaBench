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

/* Variables and functions */
 int /*<<< orphan*/  TS_PATH_DELIMITER ; 
 char* FUNC0 (char*,int /*<<< orphan*/ ) ; 

void FUNC1(char *src, char *dest) {
  char *pos = FUNC0(src, TS_PATH_DELIMITER);
  while ((pos != NULL) && (*src != *pos)) {
    *dest = *src;
    src++;
    dest++;
  }

  *dest = 0;
}