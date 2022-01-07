
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int MAX_USERS ;
 scalar_t__ pad_state ;

__attribute__((used)) static bool ctr_joypad_query_pad(unsigned pad)
{

   return pad < MAX_USERS && pad_state;
}
