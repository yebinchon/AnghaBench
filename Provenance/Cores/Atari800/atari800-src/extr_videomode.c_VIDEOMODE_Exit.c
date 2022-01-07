
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (int *) ;
 int * resolutions ;

void VIDEOMODE_Exit()
{
 if (resolutions != ((void*)0))
  free(resolutions);
}
