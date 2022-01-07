
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dirtyPal; } ;
struct TYPE_4__ {TYPE_1__ m; } ;


 TYPE_2__ Pico ;
 int PicoLoadStateHook () ;
 int SEEK_SET ;
 int areaSeek (void*,int ,int ) ;
 int state_load (void*) ;
 int state_load_legacy (void*) ;
 int state_save (void*) ;

__attribute__((used)) static int pico_state_internal(void *afile, int is_save)
{
  int ret;

  if (is_save)
    ret = state_save(afile);
  else {
    ret = state_load(afile);
    if (ret != 0) {
      areaSeek(afile, 0, SEEK_SET);
      ret = state_load_legacy(afile);
    }

    if (PicoLoadStateHook != ((void*)0))
      PicoLoadStateHook();
    Pico.m.dirtyPal = 1;
  }

  return ret;
}
