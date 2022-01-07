
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GameInfo ;


 int CDCORE_ISO ;
 int Cs2DeInit () ;
 int Cs2GetIP (int) ;
 int Cs2Init (int ,int ,char const*,int *,int *,int *) ;
 int * cdip ;
 int memcpy (int *,int *,int) ;

int GameInfoFromPath(const char * filename, GameInfo * info)
{
   if (cdip != ((void*)0)) return 0;

   Cs2Init(0, CDCORE_ISO, filename, ((void*)0), ((void*)0), ((void*)0));
   Cs2GetIP(1);

   memcpy(info, cdip, sizeof(GameInfo));

   Cs2DeInit();

   return 1;
}
