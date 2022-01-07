
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ea_src; int ea_dst; } ;


 TYPE_1__ d ;

__attribute__((used)) static void update_ea(unsigned int v)
{
  v &= 0xFFFFFF;
  if (d.ea_src == -1) {
    d.ea_src = v;
  } else if (d.ea_dst == -1) {
    d.ea_dst = v;
  }
}
