
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int PS4_MAX_ORBISPADS ;
 scalar_t__* pad_state ;

__attribute__((used)) static bool ps4_joypad_query_pad(unsigned pad)
{
   return pad < PS4_MAX_ORBISPADS && pad_state[pad];
}
