
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_6__ {int IPsecSaList; } ;
struct TYPE_5__ {int MessageId; } ;
typedef TYPE_1__ IPSECSA ;
typedef TYPE_2__ IKE_SERVER ;


 TYPE_1__* LIST_DATA (int ,int) ;
 int LIST_NUM (int ) ;
 int Rand32 () ;

UINT GenerateNewMessageId(IKE_SERVER *ike)
{
 UINT ret;

 if (ike == ((void*)0))
 {
  return 0;
 }

 while (1)
 {
  ret = Rand32();

  if (ret != 0 && ret != 0xffffffff)
  {
   UINT i;
   bool ok = 1;

   for (i = 0;i < LIST_NUM(ike->IPsecSaList);i++)
   {
    IPSECSA *sa = LIST_DATA(ike->IPsecSaList, i);

    if (sa->MessageId == ret)
    {
     ok = 0;
     break;
    }
   }

   if (ok)
   {
    return ret;
   }
  }
 }
}
