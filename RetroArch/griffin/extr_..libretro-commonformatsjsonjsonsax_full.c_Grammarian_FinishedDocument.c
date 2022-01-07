
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stackUsed; } ;
typedef TYPE_1__* Grammarian ;



__attribute__((used)) static int Grammarian_FinishedDocument(Grammarian grammarian)
{
   return !grammarian->stackUsed;
}
