#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * texture; } ;
struct TYPE_4__ {int /*<<< orphan*/ * texture; TYPE_1__ menu; } ;
typedef  TYPE_2__ vita_video_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(void *data)
{
   vita_video_t *vita = (vita_video_t *)data;

   FUNC1();

   if (vita->menu.texture)
   {
      FUNC2(vita->menu.texture);
      vita->menu.texture = NULL;
   }

   if (vita->texture)
   {
      FUNC2(vita->texture);
      vita->texture = NULL;
   }

   FUNC0();
}