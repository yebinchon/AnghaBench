
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int MAX_USERS ;

__attribute__((used)) static bool dos_joypad_query_pad(unsigned pad)
{
   return (pad < MAX_USERS);
}
