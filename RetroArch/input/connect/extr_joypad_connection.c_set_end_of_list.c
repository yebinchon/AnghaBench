
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int connected; void* data; int * iface; } ;
typedef TYPE_1__ joypad_connection_t ;



__attribute__((used)) static void set_end_of_list(joypad_connection_t *list, unsigned end)
{
  joypad_connection_t *entry = (joypad_connection_t *)&list[end];
  entry->connected = 0;
  entry->iface = ((void*)0);
  entry->data = (void *)0xdeadbeef;
}
