
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int CMD_EVENT_QUIT ;
 int PANIC_BUTTON_MASK ;
 int command_event (int ,int *) ;

__attribute__((used)) static void check_panic_button(uint32_t held_buttons)
{
   if ((held_buttons & PANIC_BUTTON_MASK) == PANIC_BUTTON_MASK)
      command_event(CMD_EVENT_QUIT, ((void*)0));
}
