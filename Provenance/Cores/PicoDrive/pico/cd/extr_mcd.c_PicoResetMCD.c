
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ end; scalar_t__ start; scalar_t__ size; int * data; } ;


 int POPT_EN_MCD_RAMCART ;
 int PicoOpt ;
 TYPE_1__ SRam ;
 int * calloc (int,int) ;
 int free (int *) ;

int PicoResetMCD(void)
{



  if (PicoOpt & POPT_EN_MCD_RAMCART) {
    if (SRam.data == ((void*)0))
      SRam.data = calloc(1, 0x12000);
  }
  else if (SRam.data != ((void*)0)) {
    free(SRam.data);
    SRam.data = ((void*)0);
      SRam.size = 0;
  }
  SRam.start = SRam.end = 0;

  return 0;
}
