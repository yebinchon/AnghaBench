
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Local; int State; int Country; int Unit; int Organization; int CommonName; } ;
typedef TYPE_1__ NAME ;


 scalar_t__ UniStrCmpi (int ,int ) ;

bool CompareName(NAME *n1, NAME *n2)
{

 if (n1 == ((void*)0) || n2 == ((void*)0))
 {
  return 0;
 }


 if (UniStrCmpi(n1->CommonName, n2->CommonName) == 0 &&
  UniStrCmpi(n1->Organization, n2->Organization) == 0 &&
  UniStrCmpi(n1->Unit, n2->Unit) == 0 &&
  UniStrCmpi(n1->Country, n2->Country) == 0 &&
  UniStrCmpi(n1->State, n2->State) == 0 &&
  UniStrCmpi(n1->Local, n2->Local) == 0)
 {
  return 1;
 }

 return 0;
}
