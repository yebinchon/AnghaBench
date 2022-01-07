
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef int tmp ;
typedef int UCHAR ;
struct TYPE_24__ {int Size; int Buf; } ;
struct TYPE_23__ {int Size; int Buf; } ;
struct TYPE_20__ {int CryptoKeySize; int Crypto; int * Hash; } ;
struct TYPE_22__ {TYPE_1__ TransformSetting; int HashSize; int SKEYID_e; int * CryptoKey; int SKEYID; int ResponderCookie; int InitiatorCookie; TYPE_7__* DhSharedKey; int SKEYID_a; int SKEYID_d; TYPE_7__* InitiatorRand; TYPE_7__* ResponderRand; int Secret; } ;
struct TYPE_21__ {char* Secret; } ;
typedef TYPE_2__ IKE_SERVER ;
typedef TYPE_3__ IKE_SA ;
typedef int IKE_HASH ;
typedef TYPE_4__ BUF ;


 int BinToStrEx (char*,int,int ,int ) ;
 TYPE_4__* CloneBuf (TYPE_7__*) ;
 int Debug (char*,char*) ;
 int FreeBuf (TYPE_4__*) ;
 int IkeFreeKey (int *) ;
 int IkeHMac (int *,int ,int ,int ,int ,int ) ;
 int IkeHMacBuf (int *,int ,TYPE_4__*,TYPE_4__*) ;
 int * IkeNewCryptoKeyFromK (TYPE_2__*,int ,int ,int *,int ,int ) ;
 TYPE_4__* IkeStrToPassword (int ) ;
 int MAX_SIZE ;
 TYPE_4__* MemToBuf (int ,int ) ;
 int SeekBufToEnd (TYPE_4__*) ;
 int StrCpy (int ,int,char*) ;
 int WriteBuf (TYPE_4__*,int*,int) ;
 int WriteBufBuf (TYPE_4__*,TYPE_7__*) ;
 int WriteBufInt64 (TYPE_4__*,int ) ;

void IkeCalcSaKeySet(IKE_SERVER *ike, IKE_SA *sa, char *secret)
{
 BUF *secret_buf;
 BUF *rand_buf;
 BUF *d_buf, *a_buf, *e_buf;
 UCHAR u;
 IKE_HASH *h;
 char tmp[MAX_SIZE];

 if (ike == ((void*)0) || sa == ((void*)0))
 {
  return;
 }

 h = sa->TransformSetting.Hash;


 StrCpy(sa->Secret, sizeof(sa->Secret), secret == ((void*)0) ? ike->Secret : secret);
 secret_buf = IkeStrToPassword(sa->Secret);
 rand_buf = CloneBuf(sa->ResponderRand);
 SeekBufToEnd(rand_buf);
 BinToStrEx(tmp, sizeof(tmp), rand_buf->Buf, rand_buf->Size);
 Debug("ResponderRand: %s\n", tmp);
 BinToStrEx(tmp, sizeof(tmp), sa->InitiatorRand->Buf, sa->InitiatorRand->Size);
 Debug("InitiatorRand: %s\n", tmp);

 WriteBufBuf(rand_buf, sa->InitiatorRand);

 IkeHMacBuf(h, sa->SKEYID, secret_buf, rand_buf);

 BinToStrEx(tmp, sizeof(tmp), sa->SKEYID, sa->HashSize);
 Debug("SKEYID: %s\n", tmp);


 d_buf = CloneBuf(sa->DhSharedKey);
 SeekBufToEnd(d_buf);
 WriteBufInt64(d_buf, sa->InitiatorCookie);
 WriteBufInt64(d_buf, sa->ResponderCookie);
 u = 0;
 WriteBuf(d_buf, &u, 1);
 IkeHMac(h, sa->SKEYID_d, sa->SKEYID, sa->HashSize, d_buf->Buf, d_buf->Size);

 BinToStrEx(tmp, sizeof(tmp), sa->SKEYID_d, sa->HashSize);
 Debug("SKEYID_d: %s\n", tmp);


 a_buf = MemToBuf(sa->SKEYID_d, sa->HashSize);
 SeekBufToEnd(a_buf);
 WriteBufBuf(a_buf, sa->DhSharedKey);
 WriteBufInt64(a_buf, sa->InitiatorCookie);
 WriteBufInt64(a_buf, sa->ResponderCookie);
 u = 1;
 WriteBuf(a_buf, &u, 1);
 IkeHMac(h, sa->SKEYID_a, sa->SKEYID, sa->HashSize, a_buf->Buf, a_buf->Size);

 BinToStrEx(tmp, sizeof(tmp), sa->SKEYID_a, sa->HashSize);
 Debug("SKEYID_a: %s\n", tmp);


 e_buf = MemToBuf(sa->SKEYID_a, sa->HashSize);
 SeekBufToEnd(e_buf);
 WriteBufBuf(e_buf, sa->DhSharedKey);
 WriteBufInt64(e_buf, sa->InitiatorCookie);
 WriteBufInt64(e_buf, sa->ResponderCookie);
 u = 2;
 WriteBuf(e_buf, &u, 1);
 IkeHMac(h, sa->SKEYID_e, sa->SKEYID, sa->HashSize, e_buf->Buf, e_buf->Size);

 BinToStrEx(tmp, sizeof(tmp), sa->SKEYID_e, sa->HashSize);
 Debug("SKEYID_e: %s\n", tmp);

 if (sa->CryptoKey != ((void*)0))
 {
  IkeFreeKey(sa->CryptoKey);
 }

 sa->CryptoKey = IkeNewCryptoKeyFromK(ike, sa->SKEYID_e, sa->HashSize, sa->TransformSetting.Hash,
  sa->TransformSetting.Crypto, sa->TransformSetting.CryptoKeySize);


 FreeBuf(secret_buf);
 FreeBuf(rand_buf);
 FreeBuf(d_buf);
 FreeBuf(a_buf);
 FreeBuf(e_buf);
}
