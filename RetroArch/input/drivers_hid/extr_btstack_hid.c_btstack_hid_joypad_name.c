
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int MAX_USERS ;

__attribute__((used)) static const char *btstack_hid_joypad_name(void *data, unsigned pad)
{

   if (pad >= MAX_USERS)
      return ((void*)0);

   return ((void*)0);
}
