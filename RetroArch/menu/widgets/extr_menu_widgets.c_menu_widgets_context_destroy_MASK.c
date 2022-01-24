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

/* Variables and functions */
 int MENU_WIDGETS_ICON_LAST ; 
 int /*<<< orphan*/ * font_bold ; 
 int /*<<< orphan*/ * font_regular ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * menu_widgets_icons_textures ; 
 int /*<<< orphan*/  msg_queue_icon ; 
 int /*<<< orphan*/  msg_queue_icon_outline ; 
 int /*<<< orphan*/  msg_queue_icon_rect ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(void)
{
   int i;

   /* TODO: Dismiss onscreen notifications that have been freed */

   /* Textures */
   for (i = 0; i < MENU_WIDGETS_ICON_LAST; i++)
   {
      FUNC1(&menu_widgets_icons_textures[i]);
   }

   FUNC1(&msg_queue_icon);
   FUNC1(&msg_queue_icon_outline);
   FUNC1(&msg_queue_icon_rect);

   /* Fonts */
   FUNC0(font_regular);
   FUNC0(font_bold);

   font_regular = NULL;
   font_bold = NULL;
}