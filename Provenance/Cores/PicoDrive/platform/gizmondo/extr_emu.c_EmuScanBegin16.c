
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int EmuOpt; } ;


 unsigned short* DrawLineDest ;
 TYPE_1__ currentConfig ;
 scalar_t__ giz_screen ;

__attribute__((used)) static int EmuScanBegin16(unsigned int num)
{
 DrawLineDest = (unsigned short *) giz_screen + 321 * num;

 if ((currentConfig.EmuOpt&0x4000) && (num&1) == 0)
  return 1;

 return 0;
}
