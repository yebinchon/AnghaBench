#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct retro_keybind {int /*<<< orphan*/  id; } ;
struct TYPE_5__ {scalar_t__ keybind; } ;
struct TYPE_6__ {TYPE_1__ target; } ;
struct TYPE_7__ {unsigned int index_offset; TYPE_2__ value; } ;
typedef  TYPE_3__ rarch_setting_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct retro_keybind const*,struct retro_keybind const*,size_t) ; 

__attribute__((used)) static void FUNC2(rarch_setting_t *setting,
      char *s, size_t len)
{
   unsigned index_offset                 = 0;
   const struct retro_keybind* keybind   = NULL;
   const struct retro_keybind* auto_bind = NULL;

   if (!setting)
      return;

   index_offset = setting->index_offset;
   keybind      = (const struct retro_keybind*)setting->value.target.keybind;
   auto_bind    = (const struct retro_keybind*)
      FUNC0(index_offset, keybind->id);

   FUNC1(s, keybind, auto_bind, len);
}