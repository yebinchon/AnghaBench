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
typedef  int uint8_t ;
typedef  int uint32_t ;

/* Variables and functions */
 int const FLOAT_BYTES ; 
 int FUNC0 (int) ; 
 int FUNC1 (char const* const,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (char* const,char const* const,int const) ; 

int FUNC3(const char *const input, const int nelements, char *const output) {
  float *ostream = (float *)output;

  if (input[0] == 1) {
    FUNC2(output, input + 1, nelements * FLOAT_BYTES);
    return nelements * FLOAT_BYTES;
  }

  uint8_t  flags = 0;
  int      ipos = 1;
  int      opos = 0;
  uint32_t prev_value = 0;

  for (int i = 0; i < nelements; i++) {
    if (i % 2 == 0) {
      flags = input[ipos++];
    }

    uint8_t flag = flags & FUNC0(4);
    flags >>= 4;

    uint32_t diff = FUNC1(input, &ipos, flag);
    union {
      uint32_t bits;
      float    real;
    } curr;

    uint32_t predicted = prev_value;
    curr.bits = predicted ^ diff;
    prev_value = curr.bits;

    ostream[opos++] = curr.real;
  }

  return nelements * FLOAT_BYTES;
}