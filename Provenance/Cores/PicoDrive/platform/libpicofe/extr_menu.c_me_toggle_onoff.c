
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mask; scalar_t__ var; } ;
typedef TYPE_1__ menu_entry ;



__attribute__((used)) static void me_toggle_onoff(menu_entry *ent)
{

 if (ent->mask & 0xffff0000)
  *(unsigned int *)ent->var ^= ent->mask;
 else if (ent->mask & 0xff00)
  *(unsigned short *)ent->var ^= ent->mask;
 else
  *(unsigned char *)ent->var ^= ent->mask;
}
