
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char* HighCol ;
 scalar_t__ VRAM_CACHED_STUFF ;
 int dynamic_palette ;

__attribute__((used)) static int EmuScanSlowBegin(unsigned int num)
{
 if (!dynamic_palette)
  HighCol = (unsigned char *)VRAM_CACHED_STUFF + num * 512 + 8;

 return 0;
}
