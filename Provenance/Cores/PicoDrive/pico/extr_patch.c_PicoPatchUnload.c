
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PicoPatchCount ;
 int * PicoPatches ;
 int free (int *) ;

void PicoPatchUnload(void)
{
 if (PicoPatches != ((void*)0))
 {
  free(PicoPatches);
  PicoPatches = ((void*)0);
 }
 PicoPatchCount = 0;
}
