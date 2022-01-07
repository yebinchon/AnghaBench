
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_3__ {int CapsList; } ;
typedef TYPE_1__ CAPSLIST ;
typedef int CAPS ;


 int FreeCaps (int *) ;
 int * LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int ReleaseList (int ) ;

void FreeRpcCapsList(CAPSLIST *t)
{
 UINT i;

 if (t == ((void*)0))
 {
  return;
 }

 for (i = 0;i < LIST_NUM(t->CapsList);i++)
 {
  CAPS *c = LIST_DATA(t->CapsList, i);

  FreeCaps(c);
 }

 ReleaseList(t->CapsList);
}
