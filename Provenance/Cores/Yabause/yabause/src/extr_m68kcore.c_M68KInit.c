
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int id; } ;


 TYPE_1__* M68K ;
 TYPE_1__** M68KCoreList ;
 TYPE_1__ M68KDummy ;

int M68KInit(int coreid) {
   int i;

   M68K = &M68KDummy;


   for (i = 0; M68KCoreList[i] != ((void*)0); i++)
   {
      if (M68KCoreList[i]->id == coreid)
      {

         M68K = M68KCoreList[i];
         break;
      }
   }

   return 0;
}
