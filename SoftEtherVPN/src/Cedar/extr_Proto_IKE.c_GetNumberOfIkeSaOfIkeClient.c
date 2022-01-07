
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_6__ {int * IkeClient; } ;
struct TYPE_5__ {int IkeSaList; } ;
typedef TYPE_1__ IKE_SERVER ;
typedef TYPE_2__ IKE_SA ;
typedef int IKE_CLIENT ;


 TYPE_2__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;

UINT GetNumberOfIkeSaOfIkeClient(IKE_SERVER *ike, IKE_CLIENT *c)
{
 UINT num = 0, i;

 if (ike == ((void*)0) || c == ((void*)0))
 {
  return 0;
 }

 for (i = 0;i < LIST_NUM(ike->IkeSaList);i++)
 {
  IKE_SA *sa = LIST_DATA(ike->IkeSaList, i);

  if (sa->IkeClient == c)
  {
   num++;
  }
 }

 return num;
}
