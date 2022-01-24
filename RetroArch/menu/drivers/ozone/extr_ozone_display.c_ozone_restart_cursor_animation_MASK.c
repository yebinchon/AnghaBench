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
struct TYPE_6__ {int cursor_state; int /*<<< orphan*/  cursor_border; } ;
struct TYPE_8__ {TYPE_2__* theme; TYPE_1__ theme_dynamic; int /*<<< orphan*/  has_all_assets; } ;
typedef  TYPE_3__ ozone_handle_t ;
typedef  uintptr_t menu_animation_ctx_tag ;
struct TYPE_7__ {int /*<<< orphan*/  cursor_border_1; int /*<<< orphan*/  cursor_border_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (uintptr_t*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ozone_default_theme ; 

void FUNC3(ozone_handle_t *ozone)
{
   menu_animation_ctx_tag tag = (uintptr_t) &ozone_default_theme;

   if (!ozone->has_all_assets)
      return;

   ozone->theme_dynamic.cursor_state = 1;
   FUNC0(ozone->theme_dynamic.cursor_border, ozone->theme->cursor_border_0, sizeof(ozone->theme_dynamic.cursor_border));
   FUNC1(&tag);

   FUNC2(ozone, ozone->theme_dynamic.cursor_border, ozone->theme->cursor_border_1);
}