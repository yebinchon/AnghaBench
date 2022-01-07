
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_5__ {int * X; } ;
struct TYPE_6__ {TYPE_1__ ClientCert; int MdSend; int MdRecv; int CipherEncrypt; int CipherDecrypt; int SendControlPacketList; int AckReplyList; int * SslPipe; } ;
typedef int OPENVPN_CONTROL_PACKET ;
typedef TYPE_2__ OPENVPN_CHANNEL ;


 int Free (TYPE_2__*) ;
 int FreeCipher (int ) ;
 int FreeMd (int ) ;
 int FreeSslPipe (int *) ;
 int FreeX (int *) ;
 int * LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int OvsFreeControlPacket (int *) ;
 int ReleaseIntList (int ) ;
 int ReleaseList (int ) ;

void OvsFreeChannel(OPENVPN_CHANNEL *c)
{
 UINT i;

 if (c == ((void*)0))
 {
  return;
 }

 if (c->SslPipe != ((void*)0))
 {
  FreeSslPipe(c->SslPipe);
 }

 ReleaseIntList(c->AckReplyList);

 for (i = 0;i < LIST_NUM(c->SendControlPacketList);i++)
 {
  OPENVPN_CONTROL_PACKET *p = LIST_DATA(c->SendControlPacketList, i);

  OvsFreeControlPacket(p);
 }

 ReleaseList(c->SendControlPacketList);

 FreeCipher(c->CipherDecrypt);
 FreeCipher(c->CipherEncrypt);

 FreeMd(c->MdRecv);
 FreeMd(c->MdSend);

 if (c->ClientCert.X != ((void*)0))
 {
  FreeX(c->ClientCert.X);
 }

 Free(c);
}
