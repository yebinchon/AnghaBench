
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * keyword; } ;
typedef scalar_t__ Size ;
typedef TYPE_1__ PQconninfoOption ;


 TYPE_1__* PQconndefaults () ;
 int PQconninfoFree (TYPE_1__*) ;

__attribute__((used)) static Size
CalculateMaxSize()
{
 PQconninfoOption *defaults = PQconndefaults();
 PQconninfoOption *option = ((void*)0);
 Size maxSize = 0;

 for (option = defaults;
   option->keyword != ((void*)0);
   option++, maxSize++)
 {

 }

 PQconninfoFree(defaults);


 maxSize++;

 return maxSize;
}
