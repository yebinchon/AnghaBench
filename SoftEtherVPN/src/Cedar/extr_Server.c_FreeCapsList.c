
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_4__ {int CapsList; } ;
typedef TYPE_1__ CAPSLIST ;
typedef int CAPS ;


 int Free (TYPE_1__*) ;
 int FreeCaps (int *) ;
 int * LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int ReleaseList (int ) ;

void FreeCapsList(CAPSLIST *caps)
{
 UINT i;

 if (caps == ((void*)0))
 {
  return;
 }

 for (i = 0;i < LIST_NUM(caps->CapsList);i++)
 {
  CAPS *c = LIST_DATA(caps->CapsList, i);

  FreeCaps(c);
 }

 ReleaseList(caps->CapsList);
 Free(caps);
}
