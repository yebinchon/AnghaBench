
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_17__ {int Size; int* Buf; } ;
struct TYPE_16__ {TYPE_1__* Sock; } ;
struct TYPE_15__ {int SecureMode; } ;
typedef TYPE_1__ SOCK ;
typedef TYPE_2__ RPC ;
typedef int PACK ;
typedef TYPE_3__ BUF ;


 int * BufToPack (TYPE_3__*) ;
 int * CallRpcDispatcher (TYPE_2__*,int *) ;
 int ERR_NOT_SUPPORTED ;
 int Endian32 (int) ;
 int Free (void*) ;
 int FreeBuf (TYPE_3__*) ;
 int FreePack (int *) ;
 int MAX_PACK_SIZE ;
 void* MallocEx (int,int) ;
 TYPE_3__* NewBuf () ;
 int * PackError (int ) ;
 TYPE_3__* PackToBuf (int *) ;
 int RecvAll (TYPE_1__*,void*,int,int ) ;
 int SeekBuf (TYPE_3__*,int ,int ) ;
 int SendAdd (TYPE_1__*,int*,int) ;
 int SendNow (TYPE_1__*,int ) ;
 int WriteBuf (TYPE_3__*,void*,int) ;

bool RpcRecvNextCall(RPC *r)
{
 UINT size;
 void *tmp;
 SOCK *s;
 BUF *b;
 PACK *p;
 PACK *ret;

 if (r == ((void*)0))
 {
  return 0;
 }

 s = r->Sock;

 if (RecvAll(s, &size, sizeof(UINT), s->SecureMode) == 0)
 {
  return 0;
 }

 size = Endian32(size);

 if (size > MAX_PACK_SIZE)
 {
  return 0;
 }

 tmp = MallocEx(size, 1);

 if (RecvAll(s, tmp, size, s->SecureMode) == 0)
 {
  Free(tmp);
  return 0;
 }

 b = NewBuf();
 WriteBuf(b, tmp, size);
 SeekBuf(b, 0, 0);
 Free(tmp);

 p = BufToPack(b);
 FreeBuf(b);

 if (p == ((void*)0))
 {
  return 0;
 }

 ret = CallRpcDispatcher(r, p);
 FreePack(p);

 if (ret == ((void*)0))
 {
  ret = PackError(ERR_NOT_SUPPORTED);
 }

 b = PackToBuf(ret);
 FreePack(ret);

 size = Endian32(b->Size);
 SendAdd(s, &size, sizeof(UINT));
 SendAdd(s, b->Buf, b->Size);

 if (SendNow(s, s->SecureMode) == 0)
 {
  FreeBuf(b);
  return 0;
 }

 FreeBuf(b);

 return 1;
}
