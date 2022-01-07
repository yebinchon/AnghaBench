
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* filename; } ;


 TYPE_1__* SYSROM_roms ;

__attribute__((used)) static int AutoChooseROM(int const *order)
{
 do {
  if (SYSROM_roms[*order].filename[0] != '\0')
   return *order;
 } while (*++order != -1);
 return -1;
}
