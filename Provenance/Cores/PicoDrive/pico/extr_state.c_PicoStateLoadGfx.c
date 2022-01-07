
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int video; int * vsram; int * cram; int * vram; } ;


 TYPE_1__ Pico ;
 int SEEK_CUR ;
 int SEEK_SET ;
 int areaClose (void*) ;
 int areaRead (int *,int,int,void*) ;
 int areaSeek (void*,int,int ) ;
 void* open_save_file (char const*,int ) ;
 int state_load_gfx (void*) ;

int PicoStateLoadGfx(const char *fname)
{
  void *afile;
  int ret;

  afile = open_save_file(fname, 0);
  if (afile == ((void*)0))
    return -1;

  ret = state_load_gfx(afile);
  if (ret != 0) {

    areaSeek(afile, 0x10020, SEEK_SET);
    areaRead(Pico.vram, 1, sizeof(Pico.vram), afile);
    areaSeek(afile, 0x2000, SEEK_CUR);
    areaRead(Pico.cram, 1, sizeof(Pico.cram), afile);
    areaRead(Pico.vsram, 1, sizeof(Pico.vsram), afile);
    areaSeek(afile, 0x221a0, SEEK_SET);
    areaRead(&Pico.video, 1, sizeof(Pico.video), afile);
  }
  areaClose(afile);
  return 0;
}
