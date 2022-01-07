
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ unset; } ;


 scalar_t__ FALSE ;
 TYPE_1__* SYSROM_roms ;
 int num_unset_roms ;

__attribute__((used)) static void ClearUnsetFlag(int id)
{
 if (SYSROM_roms[id].unset) {
  SYSROM_roms[id].unset = FALSE;
  --num_unset_roms;
 }
}
