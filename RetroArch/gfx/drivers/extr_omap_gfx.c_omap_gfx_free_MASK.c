#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_3__* frame; int /*<<< orphan*/  scaler; } ;
struct TYPE_8__ {TYPE_2__ menu; scalar_t__ font; TYPE_1__* font_driver; struct TYPE_8__* omap; } ;
typedef  TYPE_3__ omap_video_t ;
struct TYPE_6__ {int /*<<< orphan*/  (* free ) (scalar_t__) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static void FUNC4(void *data)
{
   omap_video_t *vid = data;
   if (!vid)
      return;

   FUNC1(vid->omap);
   FUNC0(vid->omap);

   if (vid->font)
      vid->font_driver->free(vid->font);

   FUNC2(&vid->menu.scaler);
   FUNC0(vid->menu.frame);

   FUNC0(vid);
}