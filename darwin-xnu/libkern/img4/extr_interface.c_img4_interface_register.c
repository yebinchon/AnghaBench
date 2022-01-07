
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int img4_interface_t ;


 int const* img4if ;
 int panic (char*) ;

void
img4_interface_register(const img4_interface_t *i4)
{
 if (img4if) {
  panic("img4 interface already set");
 }
 img4if = i4;
}
