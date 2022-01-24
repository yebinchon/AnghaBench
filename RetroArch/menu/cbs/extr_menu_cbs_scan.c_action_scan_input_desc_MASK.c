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
struct retro_keybind {void* mbutton; int /*<<< orphan*/  joyaxis; void* joykey; int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int /*<<< orphan*/  AXIS_NONE ; 
 void* NO_BTN ; 
 int /*<<< orphan*/  RETROK_UNKNOWN ; 
 unsigned char FUNC0 (char const*) ; 
 struct retro_keybind** input_config_binds ; 
 unsigned int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 

__attribute__((used)) static int FUNC4(const char *path,
      const char *label, unsigned type, size_t idx)
{
   const char *menu_label         = NULL;
   unsigned key                   = 0;
   unsigned inp_desc_user         = 0;
   struct retro_keybind *target   = NULL;

   FUNC2(NULL, &menu_label, NULL, NULL, NULL);

   if (FUNC3(menu_label, "deferred_user_binds_list"))
   {
      unsigned char player_no_str = FUNC0(&label[1]);

      inp_desc_user      = (unsigned)(player_no_str - 1);
      /* This hardcoded value may cause issues if any entries are added on
         top of the input binds */
      key                = (unsigned)(idx - 7);
   }
   else
      key = FUNC1(label);

   target = &input_config_binds[inp_desc_user][key];

   if (target)
   {
      target->key     = RETROK_UNKNOWN;
      target->joykey  = NO_BTN;
      target->joyaxis = AXIS_NONE;
      target->mbutton = NO_BTN;
   }

   return 0;
}