
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_13__ {int const* priv_key; int const* pub_key; int * g; void* p; } ;
struct TYPE_12__ {int Size; int Buf; } ;
struct TYPE_11__ {int Size; TYPE_7__* dh; void* MyPrivateKey; void* MyPublicKey; } ;
typedef TYPE_1__ DH_CTX ;
typedef TYPE_2__ BUF ;
typedef int BIGNUM ;


 void* BN_new () ;
 int BN_set_word (int *,int ) ;
 void* BigNumToBuf (int const*) ;
 void* BinToBigNum (int ,int ) ;
 int DH_generate_key (TYPE_7__*) ;
 int DH_get0_key (TYPE_7__*,int const**,int const**) ;
 TYPE_7__* DH_new () ;
 int DH_set0_pqg (TYPE_7__*,int *,int *,int *) ;
 int FreeBuf (TYPE_2__*) ;
 TYPE_2__* StrToBin (char*) ;
 TYPE_1__* ZeroMalloc (int) ;

DH_CTX *DhNew(char *prime, UINT g)
{
 DH_CTX *dh;
 BUF *buf;





 if (prime == ((void*)0) || g == 0)
 {
  return ((void*)0);
 }

 buf = StrToBin(prime);

 dh = ZeroMalloc(sizeof(DH_CTX));

 dh->dh = DH_new();






 dh->dh->p = BinToBigNum(buf->Buf, buf->Size);
 dh->dh->g = BN_new();
 BN_set_word(dh->dh->g, g);


 DH_generate_key(dh->dh);






 dh->MyPublicKey = BigNumToBuf(dh->dh->pub_key);
 dh->MyPrivateKey = BigNumToBuf(dh->dh->priv_key);


 dh->Size = buf->Size;

 FreeBuf(buf);

 return dh;
}
