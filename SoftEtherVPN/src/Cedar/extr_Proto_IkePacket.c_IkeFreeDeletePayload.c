
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_3__ {int * SpiList; } ;
typedef TYPE_1__ IKE_PACKET_DELETE_PAYLOAD ;
typedef int BUF ;


 int FreeBuf (int *) ;
 int * LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int ReleaseList (int *) ;

void IkeFreeDeletePayload(IKE_PACKET_DELETE_PAYLOAD *t)
{
 UINT i;

 if (t == ((void*)0))
 {
  return;
 }

 if (t->SpiList != ((void*)0))
 {
  for (i = 0;i < LIST_NUM(t->SpiList);i++)
  {
   BUF *spi = LIST_DATA(t->SpiList, i);

   FreeBuf(spi);
  }

  ReleaseList(t->SpiList);

  t->SpiList = ((void*)0);
 }
}
