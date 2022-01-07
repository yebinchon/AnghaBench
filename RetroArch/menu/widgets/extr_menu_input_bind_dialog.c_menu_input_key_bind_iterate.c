
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct menu_bind_state {scalar_t__ begin; scalar_t__ last; int timer_timeout; int timer_hold; int * output; int buffer; scalar_t__ skip; } ;
struct TYPE_8__ {int input_bind_timeout; int input_bind_hold; } ;
struct TYPE_9__ {TYPE_1__ uints; } ;
typedef TYPE_2__ settings_t ;
struct TYPE_10__ {int len; int s; } ;
typedef TYPE_3__ menu_input_ctx_bind_t ;
struct TYPE_11__ {int keyboard_mapping_blocked; } ;
typedef TYPE_4__ input_driver_t ;


 int MENU_ENUM_LABEL_VALUE_SECONDS ;
 scalar_t__ MENU_SETTINGS_BIND_BEGIN ;
 int RARCH_INPUT_KEYBOARD_CTL_CANCEL_WAIT_KEYS ;
 TYPE_2__* config_get_ptr () ;
 char* input_config_bind_map_get_desc (scalar_t__) ;
 int input_driver_set_flushing_input () ;
 TYPE_4__* input_get_ptr () ;
 int input_keyboard_ctl (int ,int *) ;
 int menu_bind_port ;
 struct menu_bind_state menu_input_binds ;
 int menu_input_key_bind_poll_bind_state (struct menu_bind_state*,int ,int) ;
 scalar_t__ menu_input_key_bind_poll_find_hold (struct menu_bind_state*,int *) ;
 scalar_t__ menu_input_key_bind_poll_find_trigger (struct menu_bind_state*,struct menu_bind_state*,int *) ;
 char* msg_hash_to_str (int ) ;
 int rarch_timer_begin_new_time (int *,int ) ;
 int rarch_timer_get_timeout (int *) ;
 scalar_t__ rarch_timer_has_expired (int *) ;
 int rarch_timer_tick (int *) ;
 int snprintf (int ,int ,char*,char*,...) ;

bool menu_input_key_bind_iterate(menu_input_ctx_bind_t *bind)
{
   bool timed_out = 0;
   settings_t * settings = config_get_ptr();

   if (!bind)
      return 0;

   snprintf( bind->s, bind->len,
             "[%s]\npress keyboard, mouse or joypad\n(timeout %d %s)",
             input_config_bind_map_get_desc(
                menu_input_binds.begin - MENU_SETTINGS_BIND_BEGIN ),
             rarch_timer_get_timeout( &menu_input_binds.timer_timeout ),
             msg_hash_to_str( MENU_ENUM_LABEL_VALUE_SECONDS ) );


   rarch_timer_tick( &menu_input_binds.timer_timeout );
   rarch_timer_tick( &menu_input_binds.timer_hold );

   if (rarch_timer_has_expired(&menu_input_binds.timer_timeout))
   {
      input_driver_t *input_drv = input_get_ptr();

      if (input_drv)
         input_drv->keyboard_mapping_blocked = 0;


      menu_input_binds.begin++;
      menu_input_binds.output++;
      rarch_timer_begin_new_time(&menu_input_binds.timer_hold, settings->uints.input_bind_hold);
      rarch_timer_begin_new_time(&menu_input_binds.timer_timeout, settings->uints.input_bind_timeout);
      timed_out = 1;
   }


   if (menu_input_binds.begin > menu_input_binds.last)
   {

      input_driver_set_flushing_input();


      if (timed_out)
         input_keyboard_ctl(RARCH_INPUT_KEYBOARD_CTL_CANCEL_WAIT_KEYS, ((void*)0));

      return 1;
   }

   {
      bool complete = 0;
      struct menu_bind_state binds = menu_input_binds;
      input_driver_t *input_drv = input_get_ptr();

      if (input_drv)
         input_drv->keyboard_mapping_blocked = 1;

      menu_input_key_bind_poll_bind_state( &binds, menu_bind_port, timed_out );
      if ( ( binds.skip && !menu_input_binds.skip ) ||
         menu_input_key_bind_poll_find_trigger( &menu_input_binds, &binds, &( binds.buffer ) ) )
      {
         complete = 1;
      }



      if ( complete )
      {
         input_driver_t *input_drv = input_get_ptr();


         *( binds.output ) = binds.buffer;

         if (input_drv)
            input_drv->keyboard_mapping_blocked = 0;


         input_driver_set_flushing_input();

         binds.begin++;

         if ( binds.begin > binds.last )
         {
            input_keyboard_ctl( RARCH_INPUT_KEYBOARD_CTL_CANCEL_WAIT_KEYS, ((void*)0) );
            return 1;
         }


         binds.output++;
         binds.buffer = *( binds.output );
         rarch_timer_begin_new_time( &binds.timer_hold, settings->uints.input_bind_hold );
         rarch_timer_begin_new_time( &binds.timer_timeout, settings->uints.input_bind_timeout );
      }

      menu_input_binds = binds;
   }

   return 0;
}
