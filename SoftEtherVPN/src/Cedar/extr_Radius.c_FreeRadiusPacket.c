
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_6__ {struct TYPE_6__* Parse_EapMessage; int * AvpList; } ;
typedef TYPE_1__ RADIUS_PACKET ;
typedef TYPE_1__ RADIUS_AVP ;


 int Free (TYPE_1__*) ;
 TYPE_1__* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int ReleaseList (int *) ;

void FreeRadiusPacket(RADIUS_PACKET *p)
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
   RADIUS_AVP *a = LIST_DATA(p->AvpList, i);

   Free(a);
  }

  ReleaseList(p->AvpList);
 }

 Free(p->Parse_EapMessage);

 Free(p);
}
