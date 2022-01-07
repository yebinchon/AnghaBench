
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int areaClose (void*) ;
 void* open_save_file (char const*,int) ;
 int pico_state_internal (void*,int) ;

int PicoState(const char *fname, int is_save)
{
  void *afile = ((void*)0);
  int ret;

  afile = open_save_file(fname, is_save);
  if (afile == ((void*)0))
    return -1;

  ret = pico_state_internal(afile, is_save);
  areaClose(afile);
  return ret;
}
