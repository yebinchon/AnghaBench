
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bit; int btype; int code; } ;


 int DEF_BIND_COUNT ;
 size_t IN_BIND_OFFS (int ,int ) ;
 TYPE_1__* in_vk_def_binds ;

__attribute__((used)) static void in_vk_get_def_binds(int *binds)
{
 int i;

 for (i = 0; i < DEF_BIND_COUNT; i++)
  binds[IN_BIND_OFFS(in_vk_def_binds[i].code, in_vk_def_binds[i].btype)] =
   1 << in_vk_def_binds[i].bit;
}
