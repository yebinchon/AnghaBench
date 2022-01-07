
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int X ;
struct TYPE_13__ {int * Pack; int Cert; } ;
typedef TYPE_1__ WPC_PACKET ;
struct TYPE_14__ {int SniString; int AdditionalHeaderValue; int AdditionalHeaderName; } ;
typedef TYPE_2__ URL_DATA ;
typedef int UINT ;
struct TYPE_15__ {int Buf; int Size; } ;
typedef int PACK ;
typedef int K ;
typedef int INTERNET_SETTING ;
typedef TYPE_3__ BUF ;


 int ERR_INTERNAL_ERROR ;
 int ERR_PROTOCOL_ERROR ;
 int FreeBuf (TYPE_3__*) ;
 int FreeX (int ) ;
 TYPE_3__* HttpRequestEx3 (TYPE_2__*,int *,int ,int ,int *,int,int ,int *,int *,void*,int ,int*,int ,int *,int *) ;
 int IsEmptyStr (char*) ;
 int PackAddStr (int *,char*,char*) ;
 int * PackError (int ) ;
 int ParseUrl (TYPE_2__*,char*,int,int *) ;
 int SeekBuf (TYPE_3__*,int ,int ) ;
 int StrCpy (int ,int,char*) ;
 TYPE_3__* WpcGeneratePacket (int *,int *,int *) ;
 int WpcParsePacket (TYPE_1__*,TYPE_3__*) ;
 int WriteBufInt (TYPE_3__*,int ) ;

PACK *WpcCallEx2(char *url, INTERNET_SETTING *setting, UINT timeout_connect, UINT timeout_comm,
    char *function_name, PACK *pack, X *cert, K *key, void *sha1_cert_hash, UINT num_hashes, bool *cancel, UINT max_recv_size,
    char *additional_header_name, char *additional_header_value, char *sni_string)
{
 URL_DATA data;
 BUF *b, *recv;
 UINT error;
 WPC_PACKET packet;

 if (function_name == ((void*)0) || pack == ((void*)0))
 {
  return PackError(ERR_INTERNAL_ERROR);
 }

 if (ParseUrl(&data, url, 1, ((void*)0)) == 0)
 {
  return PackError(ERR_INTERNAL_ERROR);
 }

 PackAddStr(pack, "function", function_name);

 b = WpcGeneratePacket(pack, cert, key);
 if (b == ((void*)0))
 {
  return PackError(ERR_INTERNAL_ERROR);
 }

 SeekBuf(b, b->Size, 0);
 WriteBufInt(b, 0);
 SeekBuf(b, 0, 0);

 if (IsEmptyStr(additional_header_name) == 0 && IsEmptyStr(additional_header_value) == 0)
 {
  StrCpy(data.AdditionalHeaderName, sizeof(data.AdditionalHeaderName), additional_header_name);
  StrCpy(data.AdditionalHeaderValue, sizeof(data.AdditionalHeaderValue), additional_header_value);
 }

 if (sni_string != ((void*)0) && IsEmptyStr(sni_string) == 0)
 {
  StrCpy(data.SniString, sizeof(data.SniString), sni_string);
 }

 recv = HttpRequestEx3(&data, setting, timeout_connect, timeout_comm, &error,
  0, b->Buf, ((void*)0), ((void*)0), sha1_cert_hash, num_hashes, cancel, max_recv_size,
  ((void*)0), ((void*)0));

 FreeBuf(b);

 if (recv == ((void*)0))
 {
  return PackError(error);
 }

 if (WpcParsePacket(&packet, recv) == 0)
 {
  FreeBuf(recv);
  return PackError(ERR_PROTOCOL_ERROR);
 }

 FreeBuf(recv);

 FreeX(packet.Cert);

 return packet.Pack;
}
