
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ DrawLineDest ;
 scalar_t__ rot_buff ;

__attribute__((used)) static int EmuScanBegin16_rot(unsigned int num)
{
 DrawLineDest = rot_buff + (num & 3) * 320 * 2;
 return 0;
}
