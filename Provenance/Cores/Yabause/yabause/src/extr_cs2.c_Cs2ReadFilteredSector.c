
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int partition_struct ;
struct TYPE_5__ {int* data; int size; int fn; int cn; int sm; int ci; int FAD; } ;
struct TYPE_6__ {int getsectsize; int isaudio; int * outconcddev; TYPE_2__ workblock; TYPE_1__* cdi; int isbufferfull; } ;
struct TYPE_4__ {int (* ReadSectorFAD ) (int ,int*) ;} ;


 TYPE_3__* Cs2Area ;
 int * Cs2FilterData (int *,int) ;
 int Cs2SetTiming (int) ;
 int ScspReceiveCDDA (int*) ;
 scalar_t__ memcmp (char*,int*,int) ;
 int stub1 (int ,int*) ;

int Cs2ReadFilteredSector(u32 rfsFAD, partition_struct **partition) {
  char syncheader[12] = { 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
                          0xFF, 0xFF, 0xFF, 0x00};
  int isaudio = 0;

  if (Cs2Area->outconcddev != ((void*)0) && !Cs2Area->isbufferfull)
  {

     if (!Cs2Area->cdi->ReadSectorFAD(rfsFAD, Cs2Area->workblock.data))
     {
        *partition = ((void*)0);
        return -2;
     }

     Cs2Area->workblock.size = Cs2Area->getsectsize;
     Cs2Area->workblock.FAD = rfsFAD;

     if (memcmp(syncheader, Cs2Area->workblock.data, 12) != 0) isaudio = 1;


     Cs2Area->isaudio = isaudio;
     Cs2SetTiming(1);


     if (isaudio)
     {
        ScspReceiveCDDA(Cs2Area->workblock.data);
        *partition = ((void*)0);
        return 0;
     }
     else if (Cs2Area->workblock.data[0xF] == 0x02)
     {

        if (Cs2Area->workblock.data[0x12] & 0x20) Cs2Area->workblock.size = 2324;

        Cs2Area->workblock.fn = Cs2Area->workblock.data[0x10];
        Cs2Area->workblock.cn = Cs2Area->workblock.data[0x11];
        Cs2Area->workblock.sm = Cs2Area->workblock.data[0x12];
        Cs2Area->workblock.ci = Cs2Area->workblock.data[0x13];
     }





     *partition = Cs2FilterData(Cs2Area->outconcddev, isaudio);
     return 0;
  }

  *partition = ((void*)0);
  return -1;
}
