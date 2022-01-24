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
struct TYPE_5__ {int /*<<< orphan*/ * decl; int /*<<< orphan*/ * buffer; } ;
struct TYPE_6__ {TYPE_1__ menu_display; } ;
typedef  TYPE_2__ d3d8_video_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3(d3d8_video_t *d3d)
{
   if (!d3d)
      return;

   FUNC2();

   FUNC0(d3d);
   FUNC1(d3d->menu_display.buffer, d3d->menu_display.decl);
   d3d->menu_display.buffer = NULL;
   d3d->menu_display.decl = NULL;
}