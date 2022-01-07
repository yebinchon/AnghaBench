
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int wiiu_hid_t ;
struct TYPE_5__ {int data; TYPE_1__* iface; } ;
typedef TYPE_2__ joypad_connection_t ;
struct TYPE_4__ {char const* (* get_name ) (int ) ;} ;


 TYPE_2__* get_pad (int *,unsigned int) ;
 char const* stub1 (int ) ;

__attribute__((used)) static const char *wiiu_hid_joypad_name(void *data, unsigned slot)
{
   joypad_connection_t *pad = get_pad((wiiu_hid_t *)data, slot);

   if (!pad)
      return ((void*)0);

   return pad->iface->get_name(pad->data);
}
