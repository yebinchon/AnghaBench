
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int isdiskchanged; int status; TYPE_1__* cdi; } ;
struct TYPE_4__ {int id; scalar_t__ (* Init ) (char const*) ;scalar_t__ Name; int (* DeInit ) () ;} ;


 int CDB_STAT_PAUSE ;
 int CDCORE_DEFAULT ;
 TYPE_1__** CDCoreList ;
 TYPE_2__* Cs2Area ;
 TYPE_1__ DummyCD ;
 int SmpcRecheckRegion () ;
 int YAB_ERR_CANNOTINIT ;
 int YabSetError (int ,void*) ;
 int stub1 () ;
 scalar_t__ stub2 (char const*) ;

int Cs2ChangeCDCore(int coreid, const char *cdpath)
{
   int i;


   if (Cs2Area->cdi != ((void*)0))
      Cs2Area->cdi->DeInit();


   if (coreid == CDCORE_DEFAULT)
      coreid = 0;


   for (i = 0; CDCoreList[i] != ((void*)0); i++)
   {
      if (CDCoreList[i]->id == coreid)
      {

         Cs2Area->cdi = CDCoreList[i];
         break;
      }
   }

   if (Cs2Area->cdi == ((void*)0))
   {
      Cs2Area->cdi = &DummyCD;
      return -1;
   }

   if (Cs2Area->cdi->Init(cdpath) != 0)
   {

      YabSetError(YAB_ERR_CANNOTINIT, (void *)Cs2Area->cdi->Name);



      Cs2Area->cdi = &DummyCD;
   }

   Cs2Area->isdiskchanged = 1;
   Cs2Area->status = CDB_STAT_PAUSE;
   SmpcRecheckRegion();

   return 0;
}
