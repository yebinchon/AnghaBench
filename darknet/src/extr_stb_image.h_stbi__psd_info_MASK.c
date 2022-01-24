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
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(stbi__context *s, int *x, int *y, int *comp)
{
   int channelCount, dummy, depth;
   if (!x) x = &dummy;
   if (!y) y = &dummy;
   if (!comp) comp = &dummy;
   if (FUNC1(s) != 0x38425053) {
       FUNC2( s );
       return 0;
   }
   if (FUNC0(s) != 1) {
       FUNC2( s );
       return 0;
   }
   FUNC3(s, 6);
   channelCount = FUNC0(s);
   if (channelCount < 0 || channelCount > 16) {
       FUNC2( s );
       return 0;
   }
   *y = FUNC1(s);
   *x = FUNC1(s);
   depth = FUNC0(s);
   if (depth != 8 && depth != 16) {
       FUNC2( s );
       return 0;
   }
   if (FUNC0(s) != 3) {
       FUNC2( s );
       return 0;
   }
   *comp = 4;
   return 1;
}