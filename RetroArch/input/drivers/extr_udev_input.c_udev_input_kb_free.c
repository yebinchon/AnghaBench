
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int UDEV_MAX_KEYS ;
 int free_xkb () ;
 scalar_t__* udev_key_state ;

__attribute__((used)) static void udev_input_kb_free(void)
{
   unsigned i;

   for (i = 0; i < UDEV_MAX_KEYS; i++)
      udev_key_state[i] = 0;




}
