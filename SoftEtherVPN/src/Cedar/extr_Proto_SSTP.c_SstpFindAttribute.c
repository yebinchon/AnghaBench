
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ UINT ;
typedef scalar_t__ UCHAR ;
struct TYPE_7__ {scalar_t__ AttributeId; } ;
struct TYPE_6__ {int AttributeList; } ;
typedef TYPE_1__ SSTP_PACKET ;
typedef TYPE_2__ SSTP_ATTRIBUTE ;


 TYPE_2__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;

SSTP_ATTRIBUTE *SstpFindAttribute(SSTP_PACKET *p, UCHAR attribute_id)
{
 UINT i;

 if (p == ((void*)0))
 {
  return ((void*)0);
 }

 for (i = 0;i < LIST_NUM(p->AttributeList);i++)
 {
  SSTP_ATTRIBUTE *a = LIST_DATA(p->AttributeList, i);

  if (a->AttributeId == attribute_id)
  {
   return a;
  }
 }

 return ((void*)0);
}
