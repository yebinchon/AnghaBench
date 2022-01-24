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
 int /*<<< orphan*/  FUNC0 (unsigned char const*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char const*) ; 

unsigned long FUNC2(unsigned long crc, const unsigned char *buf, unsigned int len)
   {
      if (buf == 0) return 0L;
      crc = crc ^ 0xffffffffL;
      while (len >= 8)
      {
         FUNC1(buf);
         len -= 8;
      }
      if (len) do {
         FUNC0(buf);
      } while (--len);
      return crc ^ 0xffffffffL;
   }