
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int areaseek ;
typedef int arearw ;
typedef int areaeof ;


 int * areaClose ;
 int * areaEof ;
 int * areaRead ;
 int * areaSeek ;
 int * areaWrite ;
 int pico_state_internal (void*,int) ;

int PicoStateFP(void *afile, int is_save,
  arearw *read, arearw *write, areaeof *eof, areaseek *seek)
{
  areaRead = read;
  areaWrite = write;
  areaEof = eof;
  areaSeek = seek;
  areaClose = ((void*)0);

  return pico_state_internal(afile, is_save);
}
