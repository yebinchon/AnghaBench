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
struct TYPE_3__ {int /*<<< orphan*/ * vtable; int /*<<< orphan*/ * utable; int /*<<< orphan*/ * ytable; } ;
typedef  TYPE_1__ xv_t ;
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC2(xv_t *xv)
{
   unsigned i;
   xv->ytable = (uint8_t*)FUNC0(0x10000);
   xv->utable = (uint8_t*)FUNC0(0x10000);
   xv->vtable = (uint8_t*)FUNC0(0x10000);

   for (i = 0; i < 0x10000; i++)
   {
      /* Extract RGB565 color data from i */
      unsigned r = (i >> 11) & 0x1f;
      unsigned g = (i >> 5)  & 0x3f;
      unsigned b = (i >> 0)  & 0x1f;
      r          = (r << 3) | (r >> 2);  /* R5->R8 */
      g          = (g << 2) | (g >> 4);  /* G6->G8 */
      b          = (b << 3) | (b >> 2);  /* B5->B8 */

      FUNC1(&xv->ytable[i],
            &xv->utable[i], &xv->vtable[i], r, g, b);
   }
}