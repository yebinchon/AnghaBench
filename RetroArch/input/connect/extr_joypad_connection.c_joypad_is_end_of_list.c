
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* data; int iface; int connected; } ;
typedef TYPE_1__ joypad_connection_t ;



__attribute__((used)) static bool joypad_is_end_of_list(joypad_connection_t *pad) {
  return pad && !pad->connected && !pad->iface && pad->data == (void *)0xdeadbeef;
}
