
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ UINT64 ;
typedef int UINT ;
typedef scalar_t__ UCHAR ;
struct TYPE_18__ {int HashSize; } ;
struct TYPE_17__ {scalar_t__* Buf; } ;
struct TYPE_16__ {int ServerPort; int ClientPort; int StartQuickModeAsSoon; int ClientIP; int ServerIP; } ;
struct TYPE_15__ {scalar_t__* NextIv; int Key; scalar_t__* Iv; } ;
struct TYPE_13__ {scalar_t__ CapsuleMode; scalar_t__ LifeKilobytes; TYPE_1__* Crypto; TYPE_7__* Hash; } ;
struct TYPE_14__ {int Spi; int CurrentSeqNo; int TotalSize; int StartQM_FlagSet; TYPE_2__ TransformSetting; scalar_t__* EspIv; int HashKey; int CryptoKey; TYPE_5__* IkeClient; } ;
struct TYPE_12__ {int BlockSize; } ;
typedef TYPE_3__ IPSECSA ;
typedef int IKE_SERVER ;
typedef TYPE_4__ IKE_CRYPTO_PARAM ;
typedef TYPE_5__ IKE_CLIENT ;
typedef TYPE_6__ BUF ;


 int Copy (scalar_t__*,scalar_t__*,int) ;
 int Free (scalar_t__*) ;
 int FreeBuf (TYPE_6__*) ;
 int IKE_ESP_HASH_SIZE ;
 int IKE_MAX_HASH_SIZE ;
 scalar_t__ IKE_P2_CAPSULE_TRANSPORT ;
 scalar_t__ IKE_P2_CAPSULE_TUNNEL ;
 int IKE_UDP_TYPE_ESP ;
 int IPSEC_PORT_IPSEC_ESP_RAW ;
 TYPE_6__* IkeEncrypt (scalar_t__*,int,TYPE_4__*) ;
 int IkeHMac (TYPE_7__*,scalar_t__*,int ,int ,scalar_t__*,int) ;
 int IkeSendUdpPacket (int *,int ,int *,int,int *,int,scalar_t__*,int) ;
 scalar_t__* Malloc (int) ;
 int WRITE_UINT (scalar_t__*,int) ;

void IPsecSendPacketByIPsecSaInner(IKE_SERVER *ike, IPSECSA *sa, UCHAR *data, UINT data_size, UCHAR protocol_id)
{
 UINT esp_size;
 UINT encrypted_payload_size;
 UCHAR *esp;
 UINT i;
 UINT size_of_padding;
 IKE_CRYPTO_PARAM cp;
 BUF *enc;
 IKE_CLIENT *c;

 if (ike == ((void*)0) || sa == ((void*)0) || data == ((void*)0) || data_size == 0)
 {
  return;
 }

 c = sa->IkeClient;
 if (c == ((void*)0))
 {
  return;
 }


 encrypted_payload_size = data_size + 2;
 if ((encrypted_payload_size % sa->TransformSetting.Crypto->BlockSize) != 0)
 {
  encrypted_payload_size = ((encrypted_payload_size / sa->TransformSetting.Crypto->BlockSize) + 1) * sa->TransformSetting.Crypto->BlockSize;
 }
 size_of_padding = encrypted_payload_size - data_size - 2;


 esp_size = sizeof(UINT) * 2 + sa->TransformSetting.Crypto->BlockSize + encrypted_payload_size + IKE_ESP_HASH_SIZE;


 esp = Malloc(esp_size + IKE_MAX_HASH_SIZE);


 WRITE_UINT(esp, sa->Spi);


 sa->CurrentSeqNo++;
 WRITE_UINT(esp + sizeof(UINT), sa->CurrentSeqNo);


 Copy(esp + sizeof(UINT) * 2, sa->EspIv, sa->TransformSetting.Crypto->BlockSize);


 Copy(esp + sizeof(UINT) * 2 + sa->TransformSetting.Crypto->BlockSize, data, data_size);


 for (i = 0;i < size_of_padding;i++)
 {
  esp[sizeof(UINT) * 2 + sa->TransformSetting.Crypto->BlockSize + data_size + i] = (UCHAR)(i + 1);
 }


 esp[sizeof(UINT) * 2 + sa->TransformSetting.Crypto->BlockSize + data_size + size_of_padding] = (UCHAR)size_of_padding;


 esp[sizeof(UINT) * 2 + sa->TransformSetting.Crypto->BlockSize + data_size + size_of_padding + 1] = protocol_id;


 Copy(cp.Iv, sa->EspIv, sa->TransformSetting.Crypto->BlockSize);
 cp.Key = sa->CryptoKey;

 enc = IkeEncrypt(esp + sizeof(UINT) * 2 + sa->TransformSetting.Crypto->BlockSize, encrypted_payload_size, &cp);
 if (enc != ((void*)0))
 {
  bool start_qm = 0;
  UINT server_port = c->ServerPort;
  UINT client_port = c->ClientPort;


  Copy(esp + sizeof(UINT) * 2 + sa->TransformSetting.Crypto->BlockSize, enc->Buf, encrypted_payload_size);

  FreeBuf(enc);


  IkeHMac(sa->TransformSetting.Hash,
   esp + sizeof(UINT) * 2 + sa->TransformSetting.Crypto->BlockSize + encrypted_payload_size,
   sa->HashKey,
   sa->TransformSetting.Hash->HashSize,
   esp,
   sizeof(UINT) * 2 + sa->TransformSetting.Crypto->BlockSize + encrypted_payload_size);



  if (sa->TransformSetting.CapsuleMode == IKE_P2_CAPSULE_TRANSPORT ||
   sa->TransformSetting.CapsuleMode == IKE_P2_CAPSULE_TUNNEL)
  {
   server_port = client_port = IPSEC_PORT_IPSEC_ESP_RAW;
  }


  IkeSendUdpPacket(ike, IKE_UDP_TYPE_ESP, &c->ServerIP, server_port, &c->ClientIP, client_port,
   esp, esp_size);


  Copy(sa->EspIv, cp.NextIv, sa->TransformSetting.Crypto->BlockSize);

  sa->TotalSize += esp_size;

  if (sa->CurrentSeqNo >= 0xf0000000)
  {
   start_qm = 1;
  }

  if (sa->TransformSetting.LifeKilobytes != 0)
  {
   UINT64 hard_size = (UINT64)sa->TransformSetting.LifeKilobytes * (UINT64)1000;
   UINT64 soft_size = hard_size * (UINT64)2 / (UINT64)3;

   if (sa->TotalSize >= soft_size)
   {
    start_qm = 1;
   }
  }

  if (start_qm)
  {
   if (sa->StartQM_FlagSet == 0)
   {
    sa->StartQM_FlagSet = 1;
    c->StartQuickModeAsSoon = 1;
   }
  }
 }
 else
 {

  Free(esp);
 }
}
