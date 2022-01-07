
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int UINT64 ;
typedef scalar_t__ UINT ;
typedef int UCHAR ;
struct TYPE_10__ {int Size; scalar_t__ Buf; } ;
struct TYPE_9__ {scalar_t__ ProtocolId; int SpiList; } ;
struct TYPE_8__ {int * IkeClient; } ;
typedef int IKE_SERVER ;
typedef TYPE_1__ IKE_SA ;
typedef TYPE_2__ IKE_PACKET_DELETE_PAYLOAD ;
typedef int IKE_CLIENT ;
typedef TYPE_3__ BUF ;


 TYPE_1__* FindIkeSaByResponderCookie (int *,int ) ;
 scalar_t__ IKE_PROTOCOL_ID_IKE ;
 scalar_t__ IKE_PROTOCOL_ID_IPSEC_ESP ;
 TYPE_3__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int MarkIPsecSaAsDeleted (int *,int ) ;
 int MarkIkeSaAsDeleted (int *,TYPE_1__*) ;
 scalar_t__ READ_UINT (scalar_t__) ;
 int READ_UINT64 (int *) ;
 int SearchIPsecSaBySpi (int *,int *,scalar_t__) ;

void ProcDeletePayload(IKE_SERVER *ike, IKE_CLIENT *c, IKE_PACKET_DELETE_PAYLOAD *d)
{

 if (ike == ((void*)0) || c == ((void*)0) || d == ((void*)0))
 {
  return;
 }

 if (d->ProtocolId == IKE_PROTOCOL_ID_IPSEC_ESP)
 {
  UINT i;

  for (i = 0;i < LIST_NUM(d->SpiList);i++)
  {
   BUF *b = LIST_DATA(d->SpiList, i);

   if (b->Size == 4)
   {
    UINT spi = READ_UINT(b->Buf);
    MarkIPsecSaAsDeleted(ike, SearchIPsecSaBySpi(ike, c, spi));
   }
  }
 }
 else if (d->ProtocolId == IKE_PROTOCOL_ID_IKE)
 {
  UINT i;

  for (i = 0;i < LIST_NUM(d->SpiList);i++)
  {
   BUF *b = LIST_DATA(d->SpiList, i);

   if (b->Size == 16)
   {
    UINT64 v1 = READ_UINT64(((UCHAR *)b->Buf) + 0);
    UINT64 v2 = READ_UINT64(((UCHAR *)b->Buf) + 8);

    IKE_SA *sa = FindIkeSaByResponderCookie(ike, v2);

    if (sa != ((void*)0) && sa->IkeClient == c)
    {
     MarkIkeSaAsDeleted(ike, sa);
    }
   }
  }
 }
}
