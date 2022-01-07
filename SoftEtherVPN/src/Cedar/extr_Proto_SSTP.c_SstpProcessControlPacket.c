
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_16__ {int DataSize; int Data; } ;
struct TYPE_15__ {int IsControl; int MessageType; int AttributeList; } ;
struct TYPE_14__ {int Aborting; int Disconnecting; int DisconnectRecved; int AbortReceived; int Status; int EstablishedCount; int SentNonce; } ;
typedef TYPE_1__ SSTP_SERVER ;
typedef TYPE_2__ SSTP_PACKET ;
typedef TYPE_3__ SSTP_ATTRIBUTE ;


 int ATTRIB_STATUS_VALUE_NOT_SUPPORTED ;
 int CERT_HASH_PROTOCOL_SHA256 ;
 int Debug (char*,...) ;
 int LIST_NUM (int ) ;
 int READ_USHORT (int ) ;
 int Rand (int ,int ) ;
 int SSTP_ATTRIB_ENCAPSULATED_PROTOCOL_ID ;
 int SSTP_ENCAPSULATED_PROTOCOL_PPP ;


 int SSTP_MSG_CALL_CONNECT_ACK ;
 int SSTP_MSG_CALL_CONNECT_NAK ;



 int SSTP_NONCE_SIZE ;
 int SSTP_SERVER_STATUS_CONNECTED_PENDING ;
 int SSTP_SERVER_STATUS_ESTABLISHED ;
 int SSTP_SERVER_STATUS_REQUEST_PENGING ;
 int SstpAbort (TYPE_1__*) ;
 int SstpDisconnect (TYPE_1__*) ;
 TYPE_3__* SstpFindAttribute (TYPE_2__*,int ) ;
 int SstpFreePacket (TYPE_2__*) ;
 TYPE_2__* SstpNewControlPacketWithAnAttribute (int ,int ) ;
 int SstpNewCryptoBindingRequestAttribute (int ,int ) ;
 int SstpNewStatusInfoAttribute (int ,int ) ;
 int SstpSendPacket (TYPE_1__*,TYPE_2__*) ;

void SstpProcessControlPacket(SSTP_SERVER *s, SSTP_PACKET *p)
{

 if (s == ((void*)0) || p == ((void*)0) || p->IsControl == 0)
 {
  return;
 }

 Debug("SSTP Control Packet Recv: Msg = %u, Num = %u\n", p->MessageType, LIST_NUM(p->AttributeList));

 switch (p->MessageType)
 {
 case 130:
  if (s->Aborting == 0 && s->Disconnecting == 0)
  {
   if (s->Status == SSTP_SERVER_STATUS_REQUEST_PENGING)
   {
    SSTP_ATTRIBUTE *protocol_id = SstpFindAttribute(p, SSTP_ATTRIB_ENCAPSULATED_PROTOCOL_ID);
    if (protocol_id != ((void*)0) && protocol_id->DataSize == 2 &&
     READ_USHORT(protocol_id->Data) == SSTP_ENCAPSULATED_PROTOCOL_PPP)
    {

     SSTP_PACKET *ret;


     Rand(s->SentNonce, SSTP_NONCE_SIZE);

     ret = SstpNewControlPacketWithAnAttribute(SSTP_MSG_CALL_CONNECT_ACK,
      SstpNewCryptoBindingRequestAttribute(CERT_HASH_PROTOCOL_SHA256, s->SentNonce));

     SstpSendPacket(s, ret);

     SstpFreePacket(ret);

     s->Status = SSTP_SERVER_STATUS_CONNECTED_PENDING;

     s->EstablishedCount++;
    }
    else
    {

     SSTP_PACKET *ret = SstpNewControlPacketWithAnAttribute(SSTP_MSG_CALL_CONNECT_NAK,
      SstpNewStatusInfoAttribute(SSTP_ATTRIB_ENCAPSULATED_PROTOCOL_ID, ATTRIB_STATUS_VALUE_NOT_SUPPORTED));

     SstpSendPacket(s, ret);

     SstpFreePacket(ret);
    }
   }
  }
  break;

 case 131:
  if (s->Aborting == 0 && s->Disconnecting == 0)
  {
   if (s->Status == SSTP_SERVER_STATUS_CONNECTED_PENDING)
   {
    s->Status = SSTP_SERVER_STATUS_ESTABLISHED;

    Debug("SSTP Connected.\n");
   }
  }
  break;

 case 129:
 case 128:
  s->DisconnectRecved = 1;
  SstpDisconnect(s);
  break;

 case 132:
  s->AbortReceived = 1;
  SstpAbort(s);
  break;
 }
}
