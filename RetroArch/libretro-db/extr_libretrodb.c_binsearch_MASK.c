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

/* Variables and functions */
 int FUNC0 (int*,void const*,int) ; 

__attribute__((used)) static int FUNC1(const void *buff, const void *item,
      uint64_t count, uint8_t field_size, uint64_t *offset)
{
   int mid            = (int)(count / 2);
   int item_size      = field_size + sizeof(uint64_t);
   uint64_t *current  = (uint64_t *)buff + (mid * item_size);
   int rv             = FUNC0(current, item, field_size);

   if (rv == 0)
   {
      *offset = *(uint64_t *)(current + field_size);
      return 0;
   }

   if (count == 0)
      return -1;

   if (rv > 0)
      return FUNC1(buff, item, mid, field_size, offset);

   return FUNC1(current + item_size, item,
         count - mid, field_size, offset);
}