#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * list; } ;
struct TYPE_6__ {int /*<<< orphan*/ * font2; int /*<<< orphan*/ * font; int /*<<< orphan*/  savestate_thumbnail; int /*<<< orphan*/  left_thumbnail; int /*<<< orphan*/  thumbnail; TYPE_1__ textures; } ;
typedef  TYPE_2__ xmb_handle_t ;

/* Variables and functions */
 unsigned int XMB_TEXTURE_LAST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC4(void *data)
{
   unsigned i;
   xmb_handle_t *xmb   = (xmb_handle_t*)data;

   if (!xmb)
      return;

   for (i = 0; i < XMB_TEXTURE_LAST; i++)
      FUNC1(&xmb->textures.list[i]);

   FUNC1(&xmb->thumbnail);
   FUNC1(&xmb->left_thumbnail);
   FUNC1(&xmb->savestate_thumbnail);

   FUNC3(xmb);
   FUNC2(xmb);

   FUNC0(xmb->font);
   FUNC0(xmb->font2);

   xmb->font = NULL;
   xmb->font2 = NULL;
}