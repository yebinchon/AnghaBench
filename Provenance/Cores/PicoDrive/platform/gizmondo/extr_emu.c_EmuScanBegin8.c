
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ HighCol ;
 scalar_t__ gfx_buffer ;

__attribute__((used)) static int EmuScanBegin8(unsigned int num)
{

 HighCol = gfx_buffer + 328 * num;

 return 0;
}
