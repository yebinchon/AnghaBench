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
typedef  char int8_t ;

/* Variables and functions */
 int BITS_PER_BYTE ; 
 int FLOAT_BYTES ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 

void FUNC2(uint32_t diff, uint8_t flag, char *const output, int *const pos) {
  uint8_t nbytes = (flag & FUNC1(3)) + 1;
  int     nshift = (FLOAT_BYTES * BITS_PER_BYTE - nbytes * BITS_PER_BYTE) * (flag >> 3);
  diff >>= nshift;

  while (nbytes) {
    output[(*pos)++] = (int8_t)(diff & FUNC0(8));
    diff >>= BITS_PER_BYTE;
    nbytes--;
  }
}