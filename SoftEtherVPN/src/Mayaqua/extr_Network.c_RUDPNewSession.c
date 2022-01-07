
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int bulk_send_key ;
typedef int bulk_recv_key ;
typedef int UINT64 ;
typedef void* UINT ;
typedef int UCHAR ;
struct TYPE_10__ {int Size; int Buf; } ;
struct TYPE_9__ {int NextSendSeqNo; int ServerMode; int Magic_Disconnect; int NextKeepAliveInterval; int Dns_TranId; int BulkNextSeqNo; int * BulkNextIv; void* BulkRecvKey; void* BulkSendKey; void* SendFifo; void* RecvFifo; int ReplyAckList; int * NextIv; int * Key_Recv; int * Key_Send; int * Key_Init; int * Magic_KeepAliveResponse; int * Magic_KeepAliveRequest; void* RecvSegmentList; void* SendSegmentList; void* LatestRecvMyTick; void* LastRecvTick; scalar_t__ LastSentTick; void* YourPort; int YourIp; void* MyPort; int MyIp; } ;
typedef TYPE_1__ RUDP_SESSION ;
typedef int IP ;
typedef TYPE_2__ BUF ;


 int Copy (int *,int *,int) ;
 int FreeBuf (TYPE_2__*) ;
 TYPE_2__* NewBuf () ;
 void* NewFifo () ;
 int NewInt64List (int) ;
 void* NewList (int ) ;
 void* NewSharedBuffer (int *,int) ;
 int RUDPCompareSegmentList ;
 int RUDP_KEEPALIVE_INTERVAL_MAX ;
 int RUDP_KEEPALIVE_INTERVAL_MIN ;
 int Rand (int *,int) ;
 int Rand16 () ;
 int Rand32 () ;
 int SHA1_SIZE ;
 int Sha1 (int *,int ,int ) ;
 void* Tick64 () ;
 int WriteBuf (TYPE_2__*,int *,int) ;
 int WriteBufStr (TYPE_2__*,char*) ;
 TYPE_1__* ZeroMalloc (int) ;

RUDP_SESSION *RUDPNewSession(bool server_mode, IP *my_ip, UINT my_port, IP *your_ip, UINT your_port, UCHAR *init_key)
{
 RUDP_SESSION *se;
 UCHAR key1[SHA1_SIZE];
 UCHAR key2[SHA1_SIZE];
 UCHAR bulk_send_key[SHA1_SIZE];
 UCHAR bulk_recv_key[SHA1_SIZE];
 BUF *b;

 se = ZeroMalloc(sizeof(RUDP_SESSION));

 Copy(&se->MyIp, my_ip, sizeof(IP));
 se->MyPort = my_port;

 Copy(&se->YourIp, your_ip, sizeof(IP));
 se->YourPort = your_port;

 Copy(se->Key_Init, init_key, SHA1_SIZE);
 se->LastSentTick = 0;
 se->LastRecvTick = Tick64();
 se->LatestRecvMyTick = Tick64();

 se->NextSendSeqNo = 1;

 se->ServerMode = server_mode;

 se->SendSegmentList = NewList(RUDPCompareSegmentList);
 se->RecvSegmentList = NewList(RUDPCompareSegmentList);


 b = NewBuf();
 WriteBuf(b, init_key, SHA1_SIZE);
 WriteBufStr(b, "zurukko");
 Sha1(key1, b->Buf, b->Size);
 FreeBuf(b);

 b = NewBuf();
 WriteBuf(b, init_key, SHA1_SIZE);
 WriteBuf(b, key1, SHA1_SIZE);
 WriteBufStr(b, "yasushineko");
 Sha1(key2, b->Buf, b->Size);
 FreeBuf(b);


 b = NewBuf();
 WriteBuf(b, init_key, SHA1_SIZE);
 WriteBufStr(b, "Magic_KeepAliveRequest");
 Sha1(se->Magic_KeepAliveRequest, b->Buf, b->Size);
 FreeBuf(b);
 b = NewBuf();
 WriteBuf(b, init_key, SHA1_SIZE);
 WriteBufStr(b, "Magic_KeepAliveResponse");
 Sha1(se->Magic_KeepAliveResponse, b->Buf, b->Size);
 FreeBuf(b);

 if (server_mode == 0)
 {
  se->Magic_Disconnect = 0xffffffff00000000ULL | (UINT64)(Rand32());
 }

 Copy(se->Key_Init, init_key, SHA1_SIZE);

 if (se->ServerMode)
 {
  Copy(se->Key_Send, key1, SHA1_SIZE);
  Copy(se->Key_Recv, key2, SHA1_SIZE);
 }
 else
 {
  Copy(se->Key_Send, key2, SHA1_SIZE);
  Copy(se->Key_Recv, key1, SHA1_SIZE);
 }

 Rand(se->NextIv, sizeof(se->NextIv));

 se->ReplyAckList = NewInt64List(1);

 se->NextKeepAliveInterval = RUDP_KEEPALIVE_INTERVAL_MIN + (Rand32() % (RUDP_KEEPALIVE_INTERVAL_MAX - RUDP_KEEPALIVE_INTERVAL_MIN));

 se->RecvFifo = NewFifo();
 se->SendFifo = NewFifo();

 se->Dns_TranId = Rand16() % 65535 + 1;


 Rand(bulk_send_key, sizeof(bulk_send_key));
 Rand(bulk_recv_key, sizeof(bulk_recv_key));

 se->BulkSendKey = NewSharedBuffer(bulk_send_key, sizeof(bulk_send_key));
 se->BulkRecvKey = NewSharedBuffer(bulk_recv_key, sizeof(bulk_recv_key));

 Rand(se->BulkNextIv, sizeof(se->BulkNextIv));
 se->BulkNextSeqNo = 1;

 return se;
}
