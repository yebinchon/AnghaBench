
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tag ;
typedef int op ;
typedef int data_packet_id ;
typedef scalar_t__ UINT ;
typedef int UCHAR ;
struct TYPE_7__ {int Size; } ;
struct TYPE_6__ {scalar_t__ IvSize; scalar_t__ IsAeadCipher; } ;
struct TYPE_5__ {int* IvSend; int Session; int Server; TYPE_3__* CipherEncrypt; TYPE_4__* MdSend; } ;
typedef TYPE_1__ OPENVPN_CHANNEL ;


 int Copy (int*,...) ;
 int Free (int*) ;
 int* Malloc (scalar_t__) ;
 int OPENVPN_P_DATA_V1 ;
 scalar_t__ OvsEncrypt (TYPE_3__*,TYPE_4__*,int*,int*,int*,int*,scalar_t__,int*,int) ;
 int OvsSendPacketRawNow (int ,int ,int*,scalar_t__) ;
 int WRITE_UINT (int*,scalar_t__) ;
 int* ZeroMalloc (scalar_t__) ;

void OvsSendDataPacket(OPENVPN_CHANNEL *c, UCHAR key_id, UINT data_packet_id, void *data, UINT data_size)
{
 const UCHAR op = ((OPENVPN_P_DATA_V1 << 3) & 0xF8) | (key_id & 0x07);
 UCHAR *dest_data;
 UINT dest_size;

 if (c == ((void*)0) || data == ((void*)0) || data_size == 0)
 {
  return;
 }





 if (c->CipherEncrypt->IsAeadCipher)
 {

  UCHAR tag[16];


  WRITE_UINT(c->IvSend, data_packet_id);


  dest_data = Malloc(sizeof(op) + sizeof(data_packet_id) + sizeof(tag) + data_size + 256);


  dest_size = sizeof(op) + sizeof(data_packet_id) + sizeof(tag);


  dest_data[0] = op;


  WRITE_UINT(dest_data + sizeof(op), data_packet_id);


  dest_size += OvsEncrypt(c->CipherEncrypt, ((void*)0), c->IvSend, tag, dest_data + dest_size, data, data_size, c->IvSend, sizeof(data_packet_id));


  Copy(dest_data + sizeof(op) + sizeof(data_packet_id), tag, sizeof(tag));
 }
 else
 {

  UINT encrypted_size = sizeof(data_packet_id) + data_size;
  UCHAR *encrypted_data = ZeroMalloc(encrypted_size);
  WRITE_UINT(encrypted_data, data_packet_id);
  Copy(encrypted_data + sizeof(data_packet_id), data, data_size);


  dest_data = Malloc(sizeof(op) + c->MdSend->Size + c->CipherEncrypt->IvSize + encrypted_size + 256);


  dest_size = sizeof(op);


  dest_data[0] = op;


  dest_size += OvsEncrypt(c->CipherEncrypt, c->MdSend, c->IvSend, ((void*)0), dest_data + sizeof(op), encrypted_data, encrypted_size, ((void*)0), 0);

  Free(encrypted_data);


  Copy(c->IvSend, dest_data + dest_size - c->CipherEncrypt->IvSize, c->CipherEncrypt->IvSize);
 }

 OvsSendPacketRawNow(c->Server, c->Session, dest_data, dest_size);
}
