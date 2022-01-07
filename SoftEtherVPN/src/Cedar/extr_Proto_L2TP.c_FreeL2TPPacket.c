
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_4__ {struct TYPE_4__* Data; int * AvpList; } ;
typedef TYPE_1__ L2TP_PACKET ;
typedef int L2TP_AVP ;


 int Free (TYPE_1__*) ;
 int FreeL2TPAVP (int *) ;
 int * LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int ReleaseList (int *) ;

void FreeL2TPPacket(L2TP_PACKET *p)
{
 UINT i;

 if (p == ((void*)0))
 {
  return;
 }

 if (p->AvpList != ((void*)0))
 {
  for (i = 0;i < LIST_NUM(p->AvpList);i++)
  {
   L2TP_AVP *a = LIST_DATA(p->AvpList, i);

   FreeL2TPAVP(a);
  }

  ReleaseList(p->AvpList);
 }

 if (p->Data != ((void*)0))
 {
  Free(p->Data);
 }

 Free(p);
}
