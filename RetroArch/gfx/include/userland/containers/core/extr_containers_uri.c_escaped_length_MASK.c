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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  RESERVED_CHARS_TABLE_T ;

/* Variables and functions */
 scalar_t__ FUNC0 (char,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const*) ; 

__attribute__((used)) static uint32_t FUNC2( const char *str, RESERVED_CHARS_TABLE_T reserved )
{
   uint32_t ii;
   uint32_t esclen = 0;
   char c;

   for (ii = FUNC1(str); ii > 0; ii--)
   {
      c = *str++;
      if (FUNC0(c, reserved))
      {
         /* Reserved character needs escaping as %xx */
         esclen += 3;
      } else {
         esclen++;
      }
   }

   return esclen;
}