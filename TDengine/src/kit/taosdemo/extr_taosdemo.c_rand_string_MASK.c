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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char const) ; 

void FUNC3(char *str, int size) {
  FUNC0(str, 0, size);
  const char charset[] = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJK1234567890";
  char *sptr = str;
  if (size) {
    --size;
    for (size_t n = 0; n < size; n++) {
      int key = FUNC1() % (int)(sizeof charset - 1);
      sptr += FUNC2(sptr, "%c", charset[key]);
    }
  }
}