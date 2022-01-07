
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int MAX_USERS ;
 scalar_t__ WPAD_EXP_NOCONTROLLER ;
 scalar_t__* pad_type ;

__attribute__((used)) static bool gx_joypad_query_pad(unsigned pad)
{
   return pad < MAX_USERS && pad_type[pad] != WPAD_EXP_NOCONTROLLER;
}
