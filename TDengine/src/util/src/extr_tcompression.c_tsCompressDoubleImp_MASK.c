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
typedef  unsigned long uint64_t ;

/* Variables and functions */
 int BITS_PER_BYTE ; 
 int FUNC0 (unsigned long) ; 
 int FUNC1 (unsigned long) ; 
 int const DOUBLE_BYTES ; 
 int FUNC2 (int) ; 
 int LONG_BYTES ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int,char* const,int*) ; 
 int /*<<< orphan*/  FUNC4 (char* const,char const* const,int) ; 

int FUNC5(const char *const input, const int nelements, char *const output) {
  int byte_limit = nelements * DOUBLE_BYTES + 1;
  int opos = 1;

  uint64_t prev_value = 0;
  uint64_t prev_diff = 0;
  uint8_t  prev_flag = 0;

  double *istream = (double *)input;

  // Main loop
  for (int i = 0; i < nelements; i++) {
    union {
      double   real;
      uint64_t bits;
    } curr;

    curr.real = istream[i];

    // Here we assume the next value is the same as previous one.
    uint64_t predicted = prev_value;
    uint64_t diff = curr.bits ^ predicted;

    int leading_zeros = LONG_BYTES * BITS_PER_BYTE;
    int trailing_zeros = leading_zeros;

    if (diff) {
      trailing_zeros = FUNC1(diff);
      leading_zeros = FUNC0(diff);
    }

    uint8_t nbytes = 0;
    uint8_t flag;

    if (trailing_zeros > leading_zeros) {
      nbytes = LONG_BYTES - trailing_zeros / BITS_PER_BYTE;

      if (nbytes > 0) nbytes--;
      flag = ((uint8_t)1 << 3) | nbytes;
    } else {
      nbytes = LONG_BYTES - leading_zeros / BITS_PER_BYTE;
      if (nbytes > 0) nbytes--;
      flag = nbytes;
    }

    if (i % 2 == 0) {
      prev_diff = diff;
      prev_flag = flag;
    } else {
      int nbyte1 = (prev_flag & FUNC2(3)) + 1;
      int nbyte2 = (flag & FUNC2(3)) + 1;
      if (opos + 1 + nbyte1 + nbyte2 <= byte_limit) {
        uint8_t flags = prev_flag | (flag << 4);
        output[opos++] = flags;
        FUNC3(prev_diff, prev_flag, output, &opos);
        FUNC3(diff, flag, output, &opos);
      } else {
        output[0] = 1;
        FUNC4(output + 1, input, byte_limit - 1);
        return byte_limit;
      }
    }
    prev_value = curr.bits;
  }

  if (nelements % 2) {
    int nbyte1 = (prev_flag & FUNC2(3)) + 1;
    int nbyte2 = 1;
    if (opos + 1 + nbyte1 + nbyte2 <= byte_limit) {
      uint8_t flags = prev_flag;
      output[opos++] = flags;
      FUNC3(prev_diff, prev_flag, output, &opos);
      FUNC3(0ul, 0, output, &opos);
    } else {
      output[0] = 1;
      FUNC4(output + 1, input, byte_limit - 1);
      return byte_limit;
    }
  }

  output[0] = 0;
  return opos;
}