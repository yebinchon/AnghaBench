
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {int ident; } ;


 scalar_t__ WPAD_EXP_NOCONTROLLER ;
 TYPE_1__ gx_joypad ;
 int gx_joypad_name (unsigned int) ;
 int input_autoconfigure_connect (int ,int *,int ,unsigned int,int ,int ) ;
 scalar_t__* pad_type ;

__attribute__((used)) static void handle_hotplug(unsigned port, uint32_t ptype)
{
   pad_type[port] = ptype;

   if (ptype != WPAD_EXP_NOCONTROLLER)
      input_autoconfigure_connect(
            gx_joypad_name(port),
            ((void*)0),
            gx_joypad.ident,
            port,
            0,
            0
            );
}
