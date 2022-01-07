
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ connected; } ;


 unsigned int MAX_USERS ;
 TYPE_1__* g_xinput_states ;

__attribute__((used)) static bool xdk_joypad_query_pad(unsigned pad)
{
   return pad < MAX_USERS && g_xinput_states[pad].connected;
}
