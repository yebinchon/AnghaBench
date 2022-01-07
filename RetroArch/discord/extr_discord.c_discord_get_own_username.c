
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ discord_is_ready () ;
 char* user_name ;

char* discord_get_own_username(void)
{
   if (discord_is_ready())
      return user_name;
   return ((void*)0);
}
