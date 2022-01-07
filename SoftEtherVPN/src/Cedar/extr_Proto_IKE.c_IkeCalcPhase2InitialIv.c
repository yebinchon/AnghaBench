
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int UINT ;
typedef int UCHAR ;
struct TYPE_12__ {int Size; int Buf; } ;
struct TYPE_10__ {TYPE_1__* Crypto; int Hash; } ;
struct TYPE_11__ {int BlockSize; TYPE_2__ TransformSetting; int * Iv; } ;
struct TYPE_9__ {int BlockSize; } ;
typedef TYPE_3__ IKE_SA ;
typedef TYPE_4__ BUF ;


 int Copy (void*,int *,int ) ;
 int Endian32 (int ) ;
 int FreeBuf (TYPE_4__*) ;
 int IKE_MAX_HASH_SIZE ;
 int IkeHash (int ,int *,int ,int ) ;
 TYPE_4__* NewBuf () ;
 int WriteBuf (TYPE_4__*,int *,int) ;

void IkeCalcPhase2InitialIv(void *iv, IKE_SA *sa, UINT message_id)
{
 BUF *b;
 UCHAR hash[IKE_MAX_HASH_SIZE];

 if (iv == ((void*)0) || sa == ((void*)0))
 {
  return;
 }

 message_id = Endian32(message_id);

 b = NewBuf();
 WriteBuf(b, sa->Iv, sa->BlockSize);
 WriteBuf(b, &message_id, sizeof(UINT));

 IkeHash(sa->TransformSetting.Hash, hash, b->Buf, b->Size);

 Copy(iv, hash, sa->TransformSetting.Crypto->BlockSize);

 FreeBuf(b);
}
