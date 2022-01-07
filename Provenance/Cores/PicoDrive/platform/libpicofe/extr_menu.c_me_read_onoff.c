
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mask; scalar_t__ var; } ;
typedef TYPE_1__ menu_entry ;



__attribute__((used)) static unsigned int me_read_onoff(const menu_entry *ent)
{

 if (ent->mask & 0xffff0000)
  return *(unsigned int *)ent->var & ent->mask;
 else if (ent->mask & 0xff00)
  return *(unsigned short *)ent->var & ent->mask;
 else
  return *(unsigned char *)ent->var & ent->mask;
}
