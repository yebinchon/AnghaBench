
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* DrawLineDest ;
 int EmuScanBegin16_ld (unsigned int) ;
 int emu_scan_end (int ) ;
 int gp2x_current_bpp ;
 int ld_counter ;
 scalar_t__ ld_left ;
 scalar_t__ ld_lines ;
 int memcpy32 (void*,void*,int) ;

__attribute__((used)) static int EmuScanEnd16_ld(unsigned int num)
{
 void *oldline = DrawLineDest;

 if (emu_scan_end)
  emu_scan_end(ld_counter);

 ld_counter++;
 ld_left--;
 if (ld_left <= 0) {
  ld_left = ld_lines;

  EmuScanBegin16_ld(num);
  memcpy32(DrawLineDest, oldline, 320 * gp2x_current_bpp / 8 / 4);
  if (emu_scan_end)
   emu_scan_end(ld_counter);

  ld_counter++;
 }

 return 0;
}
