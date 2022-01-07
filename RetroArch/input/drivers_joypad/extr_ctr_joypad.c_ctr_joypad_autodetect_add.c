
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ident; } ;


 TYPE_1__ ctr_joypad ;
 int ctr_joypad_name (unsigned int) ;
 int input_autoconfigure_connect (int ,int *,int ,unsigned int,int ,int ) ;

__attribute__((used)) static void ctr_joypad_autodetect_add(unsigned autoconf_pad)
{
   input_autoconfigure_connect(
         ctr_joypad_name(autoconf_pad),
         ((void*)0),
         ctr_joypad.ident,
         autoconf_pad,
         0,
         0
         );
}
