
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int id; scalar_t__ (* Init ) () ;} ;
struct TYPE_9__ {int BCR1; } ;
struct TYPE_10__ {int isslave; TYPE_1__ onchip; } ;
typedef TYPE_2__ SH2_struct ;


 TYPE_2__* MSH2 ;
 int SH2CORE_DEFAULT ;
 TYPE_6__* SH2Core ;
 TYPE_6__** SH2CoreList ;
 scalar_t__ SH2TrackInfLoopInit (TYPE_2__*) ;
 TYPE_2__* SSH2 ;
 scalar_t__ calloc (int,int) ;
 int free (TYPE_2__*) ;
 scalar_t__ stub1 () ;

int SH2Init(int coreid)
{
   int i;


   if ((MSH2 = (SH2_struct *)calloc(1, sizeof(SH2_struct))) == ((void*)0))
      return -1;

   if (SH2TrackInfLoopInit(MSH2) != 0)
      return -1;

   MSH2->onchip.BCR1 = 0x0000;
   MSH2->isslave = 0;


   if ((SSH2 = (SH2_struct *)calloc(1, sizeof(SH2_struct))) == ((void*)0))
      return -1;

   if (SH2TrackInfLoopInit(SSH2) != 0)
      return -1;

   SSH2->onchip.BCR1 = 0x8000;
   SSH2->isslave = 1;


   if (coreid == SH2CORE_DEFAULT)
      coreid = 0;


   for (i = 0; SH2CoreList[i] != ((void*)0); i++)
   {
      if (SH2CoreList[i]->id == coreid)
      {

         SH2Core = SH2CoreList[i];
         break;
      }
   }

   if ((SH2Core == ((void*)0)) || (SH2Core->Init() != 0)) {
      free(MSH2);
      free(SSH2);
      MSH2 = SSH2 = ((void*)0);
      return -1;
   }

   return 0;
}
