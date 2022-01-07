
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int video; int * vsram; int * cram; int * vram; } ;


 int PAHW_MCD ;
 TYPE_1__ Pico ;
 int PicoAHW ;
 int PicoCdLoadStateGfx (void*) ;
 int SEEK_CUR ;
 int SEEK_SET ;
 int areaClose (void*) ;
 int areaRead (int *,int,int,void*) ;
 int areaSeek (void*,int,int ) ;
 char* emu_GetSaveFName (int,int ,int) ;
 int emu_forcedFrame (int ) ;
 int emu_setSaveStateCbs (int) ;
 void* fopen (char*,char*) ;
 void* get_oldstate_for_preview () ;
 void* gzopen (char*,char*) ;
 int menu_prepare_bg (int,int ) ;
 int restore_oldstate (void*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static void draw_savestate_bg(int slot)
{
 void *file, *oldstate;
 char *fname;

 fname = emu_GetSaveFName(1, 0, slot);
 if (!fname) return;

 oldstate = get_oldstate_for_preview();
 if (oldstate == ((void*)0)) return;

 if (strcmp(fname + strlen(fname) - 3, ".gz") == 0) {
  file = gzopen(fname, "rb");
  emu_setSaveStateCbs(1);
 } else {
  file = fopen(fname, "rb");
  emu_setSaveStateCbs(0);
 }

 if (file) {
  if (PicoAHW & PAHW_MCD) {
   PicoCdLoadStateGfx(file);
  } else {
   areaSeek(file, 0x10020, SEEK_SET);
   areaRead(Pico.vram, 1, sizeof(Pico.vram), file);
   areaSeek(file, 0x2000, SEEK_CUR);
   areaRead(Pico.cram, 1, sizeof(Pico.cram), file);
   areaRead(Pico.vsram, 1, sizeof(Pico.vsram), file);
   areaSeek(file, 0x221a0, SEEK_SET);
   areaRead(&Pico.video, 1, sizeof(Pico.video), file);
  }
  areaClose(file);
 }

 emu_forcedFrame(0);
 menu_prepare_bg(1, 0);

 restore_oldstate(oldstate);
}
