
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int sign ;
typedef int hash ;
typedef int X ;
typedef int UCHAR ;
struct TYPE_10__ {int Size; int * Buf; } ;
typedef int PACK ;
typedef int K ;
typedef TYPE_1__ BUF ;


 int FreeBuf (TYPE_1__*) ;
 TYPE_1__* NewBuf () ;
 TYPE_1__* PackToBuf (int *) ;
 int RsaSign (int *,int *,int,int *) ;
 int SHA1_SIZE ;
 int SeekBuf (TYPE_1__*,int ,int ) ;
 int Sha1 (int *,int *,int) ;
 int WpcAddDataEntryBin (TYPE_1__*,char*,int *,int) ;
 int WriteBuf (TYPE_1__*,int *,int) ;
 TYPE_1__* XToBuf (int *,int) ;

BUF *WpcGeneratePacket(PACK *pack, X *cert, K *key)
{
 UCHAR hash[SHA1_SIZE];
 BUF *pack_data;
 BUF *cert_data = ((void*)0);
 BUF *sign_data = ((void*)0);
 BUF *b;

 if (pack == ((void*)0))
 {
  return ((void*)0);
 }

 pack_data = PackToBuf(pack);
 Sha1(hash, pack_data->Buf, pack_data->Size);

 if (cert != ((void*)0) && key != ((void*)0))
 {
  UCHAR sign[128];
  cert_data = XToBuf(cert, 0);

  RsaSign(sign, hash, sizeof(hash), key);

  sign_data = NewBuf();
  WriteBuf(sign_data, sign, sizeof(sign));
  SeekBuf(sign_data, 0, 0);
 }

 b = NewBuf();

 WpcAddDataEntryBin(b, "PACK", pack_data->Buf, pack_data->Size);
 WpcAddDataEntryBin(b, "HASH", hash, sizeof(hash));

 if (cert_data != ((void*)0))
 {
  WpcAddDataEntryBin(b, "CERT", cert_data->Buf, cert_data->Size);
  WpcAddDataEntryBin(b, "SIGN", sign_data->Buf, sign_data->Size);
 }

 FreeBuf(pack_data);
 FreeBuf(cert_data);
 FreeBuf(sign_data);

 SeekBuf(b, 0, 0);

 return b;
}
