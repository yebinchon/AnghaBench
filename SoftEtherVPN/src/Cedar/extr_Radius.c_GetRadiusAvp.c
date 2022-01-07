
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ UINT ;
typedef scalar_t__ UCHAR ;
struct TYPE_7__ {scalar_t__ Type; } ;
struct TYPE_6__ {int AvpList; } ;
typedef TYPE_1__ RADIUS_PACKET ;
typedef TYPE_2__ RADIUS_AVP ;


 TYPE_2__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;

RADIUS_AVP *GetRadiusAvp(RADIUS_PACKET *p, UCHAR type)
{
 UINT i;
 if (p == ((void*)0))
 {
  return ((void*)0);
 }

 for (i = 0;i < LIST_NUM(p->AvpList);i++)
 {
  RADIUS_AVP *avp = LIST_DATA(p->AvpList, i);

  if (avp->Type == type)
  {
   return avp;
  }
 }

 return ((void*)0);
}
