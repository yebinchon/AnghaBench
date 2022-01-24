#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct menu_bind_state {scalar_t__ begin; scalar_t__ last; int /*<<< orphan*/  timer_timeout; int /*<<< orphan*/  timer_hold; int /*<<< orphan*/ * output; int /*<<< orphan*/  buffer; scalar_t__ skip; } ;
struct TYPE_8__ {int /*<<< orphan*/  input_bind_timeout; int /*<<< orphan*/  input_bind_hold; } ;
struct TYPE_9__ {TYPE_1__ uints; } ;
typedef  TYPE_2__ settings_t ;
struct TYPE_10__ {int /*<<< orphan*/  len; int /*<<< orphan*/  s; } ;
typedef  TYPE_3__ menu_input_ctx_bind_t ;
struct TYPE_11__ {int keyboard_mapping_blocked; } ;
typedef  TYPE_4__ input_driver_t ;

/* Variables and functions */
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_SECONDS ; 
 scalar_t__ MENU_SETTINGS_BIND_BEGIN ; 
 int /*<<< orphan*/  RARCH_INPUT_KEYBOARD_CTL_CANCEL_WAIT_KEYS ; 
 TYPE_2__* FUNC0 () ; 
 char* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_4__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  menu_bind_port ; 
 struct menu_bind_state menu_input_binds ; 
 int /*<<< orphan*/  FUNC5 (struct menu_bind_state*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (struct menu_bind_state*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct menu_bind_state*,struct menu_bind_state*,int /*<<< orphan*/ *) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,...) ; 

bool FUNC14(menu_input_ctx_bind_t *bind)
{
   bool               timed_out = false;
   settings_t *        settings = FUNC0();

   if (!bind)
      return false;

   FUNC13( bind->s, bind->len,
             "[%s]\npress keyboard, mouse or joypad\n(timeout %d %s)",
             FUNC1(
                menu_input_binds.begin - MENU_SETTINGS_BIND_BEGIN ),
             FUNC10( &menu_input_binds.timer_timeout ),
             FUNC8( MENU_ENUM_LABEL_VALUE_SECONDS ) );

   /*tick main timers*/
   FUNC12( &menu_input_binds.timer_timeout );
   FUNC12( &menu_input_binds.timer_hold );

   if (FUNC11(&menu_input_binds.timer_timeout))
   {
      input_driver_t *input_drv = FUNC3();

      if (input_drv)
         input_drv->keyboard_mapping_blocked = false;

      /*skip to next bind*/
      menu_input_binds.begin++;
      menu_input_binds.output++;
      FUNC9(&menu_input_binds.timer_hold, settings->uints.input_bind_hold);
      FUNC9(&menu_input_binds.timer_timeout, settings->uints.input_bind_timeout);
      timed_out = true;
   }

   /* binds.begin is updated in keyboard_press callback. */
   if (menu_input_binds.begin > menu_input_binds.last)
   {
      /* Avoid new binds triggering things right away. */
      FUNC2();

      /* We won't be getting any key events, so just cancel early. */
      if (timed_out)
         FUNC4(RARCH_INPUT_KEYBOARD_CTL_CANCEL_WAIT_KEYS, NULL);

      return true;
   }

   {
      bool complete                = false;
      struct menu_bind_state binds = menu_input_binds;
      input_driver_t *input_drv    = FUNC3();

      if (input_drv)
         input_drv->keyboard_mapping_blocked = true;

      FUNC5( &binds, menu_bind_port, timed_out );

#ifdef ANDROID

	  /*keep resetting bind during the hold period, or we'll potentially bind joystick and mouse, etc.*/
	  binds.buffer = *( binds.output );

      if ( menu_input_key_bind_poll_find_hold( &binds, &binds.buffer ) )
      {
         /*inhibit timeout*/
         rarch_timer_begin_new_time( &binds.timer_timeout, settings->uints.input_bind_timeout );

         /*run hold timer*/
         rarch_timer_tick( &binds.timer_hold );

         snprintf( bind->s, bind->len,
                "[%s]\npress keyboard, mouse or joypad\nand hold ...",
                input_config_bind_map_get_desc(
                   menu_input_binds.begin - MENU_SETTINGS_BIND_BEGIN ) );

         /*hold complete?*/
         if ( rarch_timer_has_expired( &binds.timer_hold ) )
         {
            complete = true;
         }
      }
      else
      {
         /*reset hold countdown*/
         rarch_timer_begin_new_time( &binds.timer_hold, settings->uints.input_bind_hold );
      }

#else

      if ( ( binds.skip && !menu_input_binds.skip ) ||
         FUNC7( &menu_input_binds, &binds, &( binds.buffer ) ) )
      {
         complete = true;
      }

#endif

      if ( complete )
      {
         input_driver_t *input_drv    = FUNC3();

         /*update bind*/
         *( binds.output ) = binds.buffer;

         if (input_drv)
            input_drv->keyboard_mapping_blocked = false;

         /* Avoid new binds triggering things right away. */
         FUNC2();

         binds.begin++;

         if ( binds.begin > binds.last )
         {
            FUNC4( RARCH_INPUT_KEYBOARD_CTL_CANCEL_WAIT_KEYS, NULL );
            return true;
         }

         /*next bind*/
         binds.output++;
         binds.buffer = *( binds.output );
         FUNC9( &binds.timer_hold, settings->uints.input_bind_hold );
         FUNC9( &binds.timer_timeout, settings->uints.input_bind_timeout );
      }

      menu_input_binds = binds;
   }

   return false;
}