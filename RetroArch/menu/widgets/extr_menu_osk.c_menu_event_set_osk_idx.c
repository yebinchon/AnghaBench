
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum osk_type { ____Placeholder_osk_type } osk_type ;


 int osk_idx ;

void menu_event_set_osk_idx(enum osk_type idx)
{
   osk_idx = idx;
}
