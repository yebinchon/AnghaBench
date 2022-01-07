
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ai_service_overlay_state ;

bool menu_widgets_ai_service_overlay_set_state(int state)
{
   ai_service_overlay_state = state;
   return 1;
}
