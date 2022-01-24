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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  SRes ;
typedef  int /*<<< orphan*/  CSzData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SZ_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static SRes FUNC2(CSzData *sd, uint64_t *value)
{
   uint8_t firstuint8_t;
   uint8_t mask = 0x80;
   int i;
   FUNC0(FUNC1(sd, &firstuint8_t));
   *value = 0;
   for (i = 0; i < 8; i++)
   {
      uint8_t b;
      if ((firstuint8_t & mask) == 0)
      {
         uint64_t highPart = firstuint8_t & (mask - 1);
         *value += (highPart << (8 * i));
         return SZ_OK;
      }
      FUNC0(FUNC1(sd, &b));
      *value |= ((uint64_t)b << (8 * i));
      mask >>= 1;
   }
   return SZ_OK;
}