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
 char FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char* const,char,unsigned int) ; 

int FUNC2(const char *const input, const int nelements, char *const output) {
  int ipos = 0, opos = 0;
  while (1) {
    char     encode = input[ipos++];
    unsigned counter = (encode >> 1) & FUNC0(7);
    char     value = encode & FUNC0(1);

    FUNC1(output + opos, value, counter);
    opos += counter;
    if (opos >= nelements) {
      return nelements;
    }
  }
}