
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_15__ {int SecureMode; } ;
struct TYPE_14__ {int Size; int* Buf; } ;
struct TYPE_13__ {TYPE_4__* Sock; } ;
typedef TYPE_1__ RPC ;
typedef int PACK ;
typedef TYPE_2__ BUF ;


 int * BufToPack (TYPE_2__*) ;
 int Endian32 (int) ;
 int Free (void*) ;
 int FreeBuf (TYPE_2__*) ;
 int MAX_PACK_SIZE ;
 void* MallocEx (int,int) ;
 TYPE_2__* NewBuf () ;
 TYPE_2__* PackToBuf (int *) ;
 int RecvAll (TYPE_4__*,void*,int,int ) ;
 int SeekBuf (TYPE_2__*,int ,int ) ;
 int SendAdd (TYPE_4__*,int*,int) ;
 int SendNow (TYPE_4__*,int ) ;
 int WriteBuf (TYPE_2__*,void*,int) ;

PACK *RpcCallInternal(RPC *r, PACK *p)
{
 BUF *b;
 UINT size;
 PACK *ret;
 void *tmp;

 if (r == ((void*)0) || p == ((void*)0))
 {
  return ((void*)0);
 }

 if (r->Sock == ((void*)0))
 {
  return ((void*)0);
 }

 b = PackToBuf(p);

 size = Endian32(b->Size);
 SendAdd(r->Sock, &size, sizeof(UINT));
 SendAdd(r->Sock, b->Buf, b->Size);
 FreeBuf(b);

 if (SendNow(r->Sock, r->Sock->SecureMode) == 0)
 {
  return ((void*)0);
 }

 if (RecvAll(r->Sock, &size, sizeof(UINT), r->Sock->SecureMode) == 0)
 {
  return ((void*)0);
 }

 size = Endian32(size);
 if (size > MAX_PACK_SIZE)
 {
  return ((void*)0);
 }

 tmp = MallocEx(size, 1);
 if (RecvAll(r->Sock, tmp, size, r->Sock->SecureMode) == 0)
 {
  Free(tmp);
  return ((void*)0);
 }

 b = NewBuf();
 WriteBuf(b, tmp, size);
 SeekBuf(b, 0, 0);
 Free(tmp);

 ret = BufToPack(b);
 if (ret == ((void*)0))
 {
  FreeBuf(b);
  return ((void*)0);
 }

 FreeBuf(b);

 return ret;
}
