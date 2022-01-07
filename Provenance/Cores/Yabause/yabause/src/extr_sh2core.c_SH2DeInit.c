
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* DeInit ) () ;} ;


 int * MSH2 ;
 TYPE_1__* SH2Core ;
 int SH2TrackInfLoopDeInit (int *) ;
 int * SSH2 ;
 int free (int *) ;
 int stub1 () ;

void SH2DeInit()
{
   if (SH2Core)
      SH2Core->DeInit();
   SH2Core = ((void*)0);

   if (MSH2)
   {
      SH2TrackInfLoopDeInit(MSH2);
      free(MSH2);
   }
   MSH2 = ((void*)0);

   if (SSH2)
   {
      SH2TrackInfLoopDeInit(SSH2);
      free(SSH2);
   }
   SSH2 = ((void*)0);
}
