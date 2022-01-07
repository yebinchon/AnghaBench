
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int keygen ;
typedef int key ;
typedef int UINT64 ;
typedef int UINT ;
typedef int UCHAR ;
struct TYPE_12__ {int UseHMac; int FlushBulkSendTube; TYPE_2__* TcpSock; scalar_t__ BulkRecvSeqNoMax; int LastRecvTick; TYPE_1__* BulkRecvKey; } ;
struct TYPE_11__ {int Now; } ;
struct TYPE_10__ {int * BulkSendTube; } ;
struct TYPE_9__ {int* Data; } ;
typedef int TUBE ;
typedef TYPE_2__ SOCK ;
typedef TYPE_3__ RUDP_STACK ;
typedef TYPE_4__ RUDP_SESSION ;
typedef int CRYPT ;


 scalar_t__ Cmp (int*,int*,int) ;
 int Copy (int*,int*,int) ;
 int Encrypt (int *,int*,int*,int) ;
 int FreeCrypt (int *) ;
 int HMacSha1 (int*,int*,int,int*,int) ;
 scalar_t__ MAX (int,scalar_t__) ;
 int * NewCrypt (int*,int) ;
 int READ_UINT64 (int*) ;
 int RUDPInitSock (TYPE_3__*,TYPE_4__*) ;
 int RUDP_BULK_MAX_RECV_PKTS_IN_QUEUE ;
 scalar_t__ RUDP_BULK_SEQ_NO_RANGE ;
 int SHA1_SIZE ;
 int Sha1 (int*,int*,int) ;
 int TubeSendEx2 (int *,int*,int,int *,int,int ) ;

bool RUDPProcessBulkRecvPacket(RUDP_STACK *r, RUDP_SESSION *se, void *recv_data, UINT recv_size)
{
 UCHAR sign[SHA1_SIZE];
 UCHAR sign2[SHA1_SIZE];
 UCHAR *p;
 UCHAR *iv;
 UINT size;
 UCHAR keygen[SHA1_SIZE * 2];
 UCHAR key[SHA1_SIZE];
 CRYPT *c;
 UCHAR padlen;
 UINT64 seq_no;
 UCHAR *payload;
 UINT payload_size;

 if (r == ((void*)0) || se == ((void*)0) || recv_data == ((void*)0) || recv_size == 0 || se->BulkRecvKey == ((void*)0))
 {
  return 0;
 }

 p = (UCHAR *)recv_data;
 size = recv_size;
 if (size < SHA1_SIZE)
 {
  return 0;
 }


 if (se->UseHMac == 0)
 {
  Copy(sign, p, SHA1_SIZE);
  Copy(p, se->BulkRecvKey->Data, SHA1_SIZE);
  Sha1(sign2, p, recv_size);
  Copy(p, sign, SHA1_SIZE);

  if (Cmp(sign, sign2, SHA1_SIZE) != 0)
  {
   HMacSha1(sign2, se->BulkRecvKey->Data, SHA1_SIZE, p + SHA1_SIZE, recv_size - SHA1_SIZE);

   if (Cmp(p, sign2, SHA1_SIZE) != 0)
   {
    return 0;
   }
   else
   {
    se->UseHMac = 1;
   }
  }
  else
  {
  }
 }
 else
 {
  HMacSha1(sign2, se->BulkRecvKey->Data, SHA1_SIZE, p + SHA1_SIZE, recv_size - SHA1_SIZE);

  if (Cmp(p, sign2, SHA1_SIZE) != 0)
  {
   return 0;
  }
 }

 p += SHA1_SIZE;
 size -= SHA1_SIZE;


 if (size < SHA1_SIZE)
 {
  return 0;
 }
 iv = p;
 p += SHA1_SIZE;
 size -= SHA1_SIZE;


 if (size < 1)
 {
  return 0;
 }
 Copy(keygen + 0, se->BulkRecvKey->Data, SHA1_SIZE);
 Copy(keygen + SHA1_SIZE, iv, SHA1_SIZE);
 Sha1(key, keygen, sizeof(keygen));

 c = NewCrypt(key, sizeof(key));
 Encrypt(c, p, p, size);
 FreeCrypt(c);


 padlen = p[size - 1];
 if (padlen == 0)
 {
  return 0;
 }
 if (size < padlen)
 {
  return 0;
 }
 size -= padlen;


 seq_no = READ_UINT64(p);
 p += sizeof(UINT64);
 size -= sizeof(UINT64);

 if (seq_no == 0 || seq_no >= (0xF000000000000000ULL))
 {

  return 0;
 }

 if ((seq_no + RUDP_BULK_SEQ_NO_RANGE) < se->BulkRecvSeqNoMax)
 {

  return 0;
 }

 se->LastRecvTick = r->Now;

 payload = p;
 payload_size = size;

 se->BulkRecvSeqNoMax = MAX(seq_no, se->BulkRecvSeqNoMax);


 RUDPInitSock(r, se);

 if (se->TcpSock != ((void*)0))
 {
  SOCK *s = se->TcpSock;
  TUBE *t = s->BulkSendTube;

  if (t != ((void*)0))
  {
   TubeSendEx2(t, payload, payload_size, ((void*)0), 1, RUDP_BULK_MAX_RECV_PKTS_IN_QUEUE);

   se->FlushBulkSendTube = 1;
  }
 }

 return 1;
}
