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
typedef  unsigned int ucs4_t ;
typedef  int /*<<< orphan*/  conv_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static int
FUNC2 (conv_t conv, ucs4_t *pwc, const unsigned char *s, int n)
{
  /* This function assumes that 'unsigned int' has exactly 32 bits. */
  if (sizeof(unsigned int) != 4) FUNC1();

  if (n >= 4) {
    unsigned int x = *(const unsigned int *)s;
    x = (x >> 24) | ((x >> 8) & 0xff00) | ((x & 0xff00) << 8) | (x << 24);
    *pwc = x;
    return 4;
  }
  return FUNC0(0);
}