
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ident; } ;


 unsigned int MAX_USERS ;
 int input_autoconfigure_connect (int ,int *,int ,unsigned int,int ,int ) ;
 TYPE_1__ qnx_joypad ;
 int qnx_joypad_name (unsigned int) ;

__attribute__((used)) static bool qnx_joypad_init(void *data)
{
   unsigned autoconf_pad;

   (void)data;

   for (autoconf_pad = 0; autoconf_pad < MAX_USERS; autoconf_pad++)
      input_autoconfigure_connect(
            qnx_joypad_name(autoconf_pad),
            ((void*)0),
            qnx_joypad.ident,
            autoconf_pad,
            0,
            0
            );

   return 1;
}
