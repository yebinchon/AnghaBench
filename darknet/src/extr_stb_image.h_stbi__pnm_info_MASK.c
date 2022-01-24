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
typedef  int /*<<< orphan*/  stbi__context ;

/* Variables and functions */
 int FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int      FUNC5(stbi__context *s, int *x, int *y, int *comp)
{
   int maxv, dummy;
   char c, p, t;

   if (!x) x = &dummy;
   if (!y) y = &dummy;
   if (!comp) comp = &dummy;

   FUNC4(s);

   // Get identifier
   p = (char) FUNC1(s);
   t = (char) FUNC1(s);
   if (p != 'P' || (t != '5' && t != '6')) {
       FUNC4(s);
       return 0;
   }

   *comp = (t == '6') ? 3 : 1;  // '5' is 1-component .pgm; '6' is 3-component .ppm

   c = (char) FUNC1(s);
   FUNC3(s, &c);

   *x = FUNC2(s, &c); // read width
   FUNC3(s, &c);

   *y = FUNC2(s, &c); // read height
   FUNC3(s, &c);

   maxv = FUNC2(s, &c);  // read max value

   if (maxv > 255)
      return FUNC0("max value > 255", "PPM image not 8-bit");
   else
      return 1;
}