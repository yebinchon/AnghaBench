
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_14__ ;


typedef int dummy_buf ;
typedef scalar_t__ UINT64 ;
typedef scalar_t__ UINT ;
typedef int UCHAR ;
struct TYPE_24__ {int Size; scalar_t__ SizeofData; int * Buf; } ;
struct TYPE_23__ {scalar_t__ Size; scalar_t__ Buf; } ;
struct TYPE_22__ {TYPE_2__* Udp; TYPE_1__* Session; TYPE_14__* SendBlocks; int * RecvBuf; } ;
struct TYPE_21__ {int IgnoreSendErr; } ;
struct TYPE_20__ {scalar_t__ NextKeepAliveTime; int port; int ip; int Seq; } ;
struct TYPE_19__ {int SessionKey32; int TotalSendSizeReal; int TotalSendSize; } ;
struct TYPE_18__ {scalar_t__ num_item; } ;
typedef TYPE_3__ SOCK ;
typedef TYPE_4__ CONNECTION ;
typedef TYPE_5__ BUF ;
typedef TYPE_6__ BLOCK ;


 int Copy (char*,int ,int) ;
 int Debug (char*) ;
 scalar_t__ Endian32 (int ) ;
 scalar_t__ Endian64 (int ) ;
 int FreeBlock (TYPE_6__*) ;
 int FreeBuf (TYPE_5__*) ;
 scalar_t__ GenNextKeepAliveSpan (TYPE_4__*) ;
 TYPE_6__* GetNext (TYPE_14__*) ;
 int * Malloc (int ) ;
 TYPE_5__* NewBuf () ;
 int RECV_BUF_SIZE ;
 int SE_UDP_SIGN ;
 scalar_t__ SOCK_LATER ;
 scalar_t__ SendTo (TYPE_3__*,int *,int ,scalar_t__,scalar_t__) ;
 scalar_t__ Tick64 () ;
 scalar_t__ UDP_BUF_SIZE ;
 int WriteBuf (TYPE_5__*,int *,int) ;
 int WriteBufInt (TYPE_5__*,int) ;

void SendDataWithUDP(SOCK *s, CONNECTION *c)
{
 UCHAR *buf;
 BUF *b;
 UINT64 dummy_64 = 0;
 UCHAR dummy_buf[16];
 UINT64 now = Tick64();
 UINT ret;
 bool force_flag = 0;
 bool packet_sent = 0;

 if (s == ((void*)0) || c == ((void*)0))
 {
  return;
 }


 if (c->RecvBuf == ((void*)0))
 {
  c->RecvBuf = Malloc(RECV_BUF_SIZE);
 }
 buf = c->RecvBuf;

 if (c->Udp->NextKeepAliveTime == 0 || c->Udp->NextKeepAliveTime <= now)
 {
  force_flag = 1;
 }


 while ((c->SendBlocks->num_item > 0) || force_flag)
 {
  UINT *key32;
  UINT64 *seq;
  char *sign;

  force_flag = 0;


  b = NewBuf();


  WriteBuf(b, dummy_buf, sizeof(dummy_buf));


  while (1)
  {
   BLOCK *block;

   if (b->Size > UDP_BUF_SIZE)
   {
    break;
   }
   block = GetNext(c->SendBlocks);
   if (block == ((void*)0))
   {
    break;
   }

   if (block->Size != 0)
   {
    WriteBufInt(b, block->Size);
    WriteBuf(b, block->Buf, block->Size);

    c->Session->TotalSendSize += (UINT64)block->SizeofData;
    c->Session->TotalSendSizeReal += (UINT64)block->Size;
   }

   FreeBlock(block);
   break;
  }


  sign = (char *)(((UCHAR *)b->Buf));
  key32 = (UINT *)(((UCHAR *)b->Buf + 4));
  seq = (UINT64 *)(((UCHAR *)b->Buf + 8));
  Copy(sign, SE_UDP_SIGN, 4);
  *key32 = Endian32(c->Session->SessionKey32);
  *seq = Endian64(c->Udp->Seq++);



  packet_sent = 1;
    ret = SendTo(s, &c->Udp->ip, c->Udp->port, b->Buf, b->Size);
  if (ret == SOCK_LATER)
  {

   Debug(".");

  }
  if (ret != b->Size)
  {
   if (s->IgnoreSendErr == 0)
   {

    Debug("******* SendTo Error !!!\n");
   }
  }


  FreeBuf(b);

 }

 if (packet_sent)
 {

  c->Udp->NextKeepAliveTime = now + (UINT64)GenNextKeepAliveSpan(c);
 }
}
