
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int keygen ;
typedef int key ;
typedef int UINT64 ;
typedef int UINT ;
typedef int UCHAR ;
struct TYPE_16__ {int* Key_Recv; int YourTick; int LatestRecvMyTick; int LatestRecvMyTick2; int CurrentRtt; int Magic_Disconnect; int LastRecvTick; scalar_t__ Status; } ;
struct TYPE_15__ {scalar_t__ Protocol; int Now; int ServerMode; int SvcNameHash; } ;
typedef TYPE_1__ RUDP_STACK ;
typedef TYPE_2__ RUDP_SESSION ;
typedef int CRYPT ;


 scalar_t__ Cmp (int*,int*,int) ;
 int Copy (int*,int*,int) ;
 int Debug (char*,...) ;
 int Encrypt (int *,int*,int*,int) ;
 int FreeCrypt (int *) ;
 void* MAX (int,int) ;
 int * NewCrypt (int*,int) ;
 int READ_UINT (int*) ;
 int READ_UINT64 (int*) ;
 int RUDPDisconnectSession (TYPE_1__*,TYPE_2__*,int) ;
 int RUDPInitSock (TYPE_1__*,TYPE_2__*) ;
 int RUDPProcessAck (TYPE_1__*,TYPE_2__*,int) ;
 int RUDPProcessAck2 (TYPE_1__*,TYPE_2__*,int) ;
 int RUDPProcessRecvPayload (TYPE_1__*,TYPE_2__*,int,int*,int) ;
 int RUDP_MAX_NUM_ACK ;
 int RUDP_MAX_SEGMENT_SIZE ;
 scalar_t__ RUDP_PROTOCOL_DNS ;
 scalar_t__ RUDP_PROTOCOL_ICMP ;
 scalar_t__ RUDP_SESSION_STATUS_CONNECT_SENT ;
 scalar_t__ RUDP_SESSION_STATUS_ESTABLISHED ;
 int SHA1_SIZE ;
 int Sha1 (int*,int*,int) ;
 int XorData (int*,int*,int ,int) ;

bool RUDPProcessRecvPacket(RUDP_STACK *r, RUDP_SESSION *se, void *recv_data, UINT recv_size)
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
 UINT num_ack;
 UINT i;
 UINT64 seq_no;
 UCHAR *payload;
 UINT payload_size;
 UINT64 max_ack;
 UINT64 my_tick, your_tick;

 if (r == ((void*)0) || se == ((void*)0) || recv_data == ((void*)0) || recv_size == 0)
 {
  return 0;
 }

 p = (UCHAR *)recv_data;
 size = recv_size;
 if (size < SHA1_SIZE)
 {
  return 0;
 }


 Copy(sign, p, SHA1_SIZE);
 Copy(p, se->Key_Recv, SHA1_SIZE);
 Sha1(sign2, p, recv_size);
 Copy(p, sign, SHA1_SIZE);

 if (r->Protocol == RUDP_PROTOCOL_DNS || r->Protocol == RUDP_PROTOCOL_ICMP)
 {
  XorData(sign2, sign2, r->SvcNameHash, SHA1_SIZE);
 }

 if (Cmp(sign, sign2, SHA1_SIZE) != 0)
 {

  return 0;
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
 Copy(keygen + 0, iv, SHA1_SIZE);
 Copy(keygen + SHA1_SIZE, se->Key_Recv, SHA1_SIZE);
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


 if (size < sizeof(UINT64))
 {
  return 0;
 }
 my_tick = READ_UINT64(p);
 p += sizeof(UINT64);
 size -= sizeof(UINT64);


 if (size < sizeof(UINT64))
 {
  return 0;
 }
 your_tick = READ_UINT64(p);
 p += sizeof(UINT64);
 size -= sizeof(UINT64);

 if (your_tick > r->Now)
 {
  return 0;
 }


 if (size < sizeof(UINT64))
 {
  return 0;
 }
 max_ack = READ_UINT64(p);
 p += sizeof(UINT64);
 size -= sizeof(UINT64);


 if (size < sizeof(UINT))
 {
  return 0;
 }

 num_ack = READ_UINT(p);
 if (num_ack > RUDP_MAX_NUM_ACK)
 {
  return 0;
 }
 p += sizeof(UINT);
 size -= sizeof(UINT);


 if (size < (sizeof(UINT64) * num_ack + sizeof(UINT64)))
 {
  return 0;
 }

 if (max_ack >= 1)
 {
  RUDPProcessAck2(r, se, max_ack);
 }

 for (i = 0;i < num_ack;i++)
 {
  UINT64 seq = READ_UINT64(p);

  RUDPProcessAck(r, se, seq);

  p += sizeof(UINT64);
  size -= sizeof(UINT64);
 }


 if (my_tick >= 2)
 {
  my_tick--;
 }
 se->YourTick = MAX(se->YourTick, my_tick);

 se->LatestRecvMyTick = MAX(se->LatestRecvMyTick, your_tick);

 if (se->LatestRecvMyTick2 != se->LatestRecvMyTick)
 {
  se->LatestRecvMyTick2 = se->LatestRecvMyTick;
  se->CurrentRtt = (UINT)(r->Now - se->LatestRecvMyTick);




 }


 seq_no = READ_UINT64(p);
 p += sizeof(UINT64);
 size -= sizeof(UINT64);

 if (seq_no == 0)
 {

  return 1;
 }

 if (seq_no == se->Magic_Disconnect)
 {

  RUDPDisconnectSession(r, se, 1);
  return 1;
 }


 se->LastRecvTick = r->Now;

 payload = p;
 payload_size = size;





 if (payload_size >= 1 && payload_size <= RUDP_MAX_SEGMENT_SIZE)
 {






  RUDPProcessRecvPayload(r, se, seq_no, payload, payload_size);
 }

 if (r->ServerMode == 0)
 {
  if (se->Status == RUDP_SESSION_STATUS_CONNECT_SENT)
  {

   se->Status = RUDP_SESSION_STATUS_ESTABLISHED;

   RUDPInitSock(r, se);
  }
 }

 return 1;
}
