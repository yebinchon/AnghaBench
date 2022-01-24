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
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 
 int FUNC2 (scalar_t__**,size_t*,int /*<<< orphan*/  const*) ; 

bool FUNC3(const uint16_t *in, char *s, size_t len)
{
   size_t     dest_len  = 0;
   uint8_t *utf16_data  = NULL;
   bool            ret  = FUNC2(&utf16_data, &dest_len, in);

   if (ret)
   {
      utf16_data[dest_len] = 0;
      FUNC1(s, (const char*)utf16_data, len);
   }

   FUNC0(utf16_data);
   utf16_data = NULL;

   return ret;
}