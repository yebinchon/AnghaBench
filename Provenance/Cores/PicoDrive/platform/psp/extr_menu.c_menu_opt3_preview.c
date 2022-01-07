
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* reg; } ;
struct TYPE_4__ {TYPE_1__ video; TYPE_1__* vsram; TYPE_1__* cram; TYPE_1__* vram; } ;
typedef int Bytef ;


 TYPE_2__ Pico ;
 char* bg_buffer ;
 int emu_forcedFrame (int ) ;
 void* get_oldstate_for_preview () ;
 int lprintf (char*,int) ;
 int memcpy (TYPE_1__*,char*,int) ;
 int memset32_uncached (int ,int ,int) ;
 int menu_prepare_bg (int,int ) ;
 int psp_screen ;
 int restore_oldstate (void*) ;
 scalar_t__ rom_loaded ;
 int uncompress (int *,unsigned long*,void*,unsigned long) ;

__attribute__((used)) static void menu_opt3_preview(int is_32col)
{
 void *oldstate = ((void*)0);

 if (!rom_loaded || ((Pico.video.reg[12]&1)^1) != is_32col)
 {
  extern char bgdatac32_start[], bgdatac40_start[];
  extern int bgdatac32_size, bgdatac40_size;
  void *bgdata = is_32col ? bgdatac32_start : bgdatac40_start;
  unsigned long insize = is_32col ? bgdatac32_size : bgdatac40_size, outsize = 65856;
  int ret;
  ret = uncompress((Bytef *)bg_buffer, &outsize, bgdata, insize);
  if (ret == 0)
  {
   if (rom_loaded) oldstate = get_oldstate_for_preview();
   memcpy(Pico.vram, bg_buffer, sizeof(Pico.vram));
   memcpy(Pico.cram, (char *)bg_buffer + 0x10000, 0x40*2);
   memcpy(Pico.vsram, (char *)bg_buffer + 0x10080, 0x40*2);
   memcpy(&Pico.video,(char *)bg_buffer + 0x10100, 0x40);
  }
  else
   lprintf("uncompress returned %i\n", ret);
 }

 memset32_uncached(psp_screen, 0, 512*272*2/4);
 emu_forcedFrame(0);
 menu_prepare_bg(1, 0);

 if (oldstate) restore_oldstate(oldstate);
}
