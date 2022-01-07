
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct speedtab {int sp_speed; int sp_code; } ;



int
ttspeedtab(int speed, struct speedtab *table)
{
 for ( ; table->sp_speed != -1; table++)
  if (table->sp_speed == speed)
   return (table->sp_code);
 return (-1);
}
