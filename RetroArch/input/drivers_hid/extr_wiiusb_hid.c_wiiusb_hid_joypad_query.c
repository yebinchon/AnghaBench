
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int MAX_USERS ;

__attribute__((used)) static bool wiiusb_hid_joypad_query(void *data, unsigned pad)
{
   return pad < MAX_USERS;
}
