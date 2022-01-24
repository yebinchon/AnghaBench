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
typedef  scalar_t__* uarb ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(uarb num, int digits, FILE *out)
   /* Print 'num' as a hexadecimal number (easier than decimal!) */
{
   while (digits > 0)
      if (num[--digits] > 0)
      {
         FUNC0(out, "0x%x", num[digits]);

         while (digits > 0)
            FUNC0(out, "%.4x", num[--digits]);
      }

      else if (digits == 0) /* the number is 0 */
         FUNC1("0x0", out);
}