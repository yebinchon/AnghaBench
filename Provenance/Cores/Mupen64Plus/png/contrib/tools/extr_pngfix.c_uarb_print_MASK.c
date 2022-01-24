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
typedef  int /*<<< orphan*/  udigit ;
typedef  unsigned long* uarb ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(uarb num, int digits, FILE *out)
   /* Prints 'num' as a decimal if it will fit in an unsigned long, else as a
    * hexadecimal number.  Notice that the results vary for images over 4GByte
    * in a system dependent way, and the hexadecimal form doesn't work very well
    * in awk script input.
    *
    *
    * TODO: write uarb_div10
    */
{
   if (digits * sizeof (udigit) > sizeof (unsigned long))
      FUNC1(num, digits, out);

   else
   {
      unsigned long n = 0;

      while (digits > 0)
         n = (n << 16) + num[--digits];

      FUNC0(out, "%lu", n);
   }
}