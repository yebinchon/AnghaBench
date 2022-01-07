
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int unset; } ;


 int FALSE ;
 int SYSROM_SIZE ;
 TYPE_1__* SYSROM_roms ;
 scalar_t__ num_unset_roms ;

void SYSROM_SetDefaults(void)
{
 int i;
 for (i = 0; i < SYSROM_SIZE; ++i)
  SYSROM_roms[i].unset = FALSE;
 num_unset_roms = 0;
}
