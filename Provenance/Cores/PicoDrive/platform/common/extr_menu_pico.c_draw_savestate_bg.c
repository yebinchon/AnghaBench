
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PicoStateLoadGfx (char const*) ;
 int PicoTmpStateRestore (void*) ;
 void* PicoTmpStateSave () ;
 char* emu_get_save_fname (int,int ,int,int *) ;
 int make_bg (int ) ;
 int pemu_forced_frame (int ,int ) ;

__attribute__((used)) static void draw_savestate_bg(int slot)
{
 const char *fname;
 void *tmp_state;

 fname = emu_get_save_fname(1, 0, slot, ((void*)0));
 if (!fname)
  return;

 tmp_state = PicoTmpStateSave();

 PicoStateLoadGfx(fname);


 pemu_forced_frame(0, 0);

 make_bg(0);

 PicoTmpStateRestore(tmp_state);
}
