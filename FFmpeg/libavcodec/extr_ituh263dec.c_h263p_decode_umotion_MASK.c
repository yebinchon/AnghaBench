#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  avctx; int /*<<< orphan*/  gb; } ;
typedef  TYPE_1__ MpegEncContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(MpegEncContext * s, int pred)
{
   int code = 0, sign;

   if (FUNC2(&s->gb)) /* Motion difference = 0 */
      return pred;

   code = 2 + FUNC2(&s->gb);

   while (FUNC2(&s->gb))
   {
      code <<= 1;
      code += FUNC2(&s->gb);
      if (code >= 32768) {
          FUNC0(s->avctx, "Huge DMV");
          return 0xffff;
      }
   }
   sign = code & 1;
   code >>= 1;

   code = (sign) ? (pred - code) : (pred + code);
   FUNC1(s->avctx,"H.263+ UMV Motion = %d\n", code);
   return code;

}