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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  char uint16_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (size_t) ; 
 int FUNC1 (int /*<<< orphan*/ *,size_t*,char const*,unsigned int) ; 

__attribute__((used)) static bool FUNC2(uint8_t **utf_data,
      size_t *dest_len, const uint16_t *in)
{
   unsigned len    = 0;

   while (in[len] != '\0')
      len++;

   FUNC1(NULL, dest_len, in, len);
   *dest_len  += 1;
   *utf_data   = (uint8_t*)FUNC0(*dest_len);
   if (*utf_data == 0)
      return false;

   return FUNC1(*utf_data, dest_len, in, len);
}