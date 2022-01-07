
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int keygen ;
typedef int key ;
typedef int dst ;
typedef int UINT64 ;
typedef scalar_t__ UINT ;
typedef scalar_t__ UCHAR ;
struct TYPE_8__ {scalar_t__* Key_Send; scalar_t__* NextIv; scalar_t__ Icmp_Type; scalar_t__ Dns_TranId; int LastSentTick; int YourPort; int YourIp; int * ReplyAckList; int LastRecvCompleteSeqNo; int YourTick; } ;
struct TYPE_7__ {scalar_t__ Protocol; int Now; int SvcNameHash; } ;
typedef TYPE_1__ RUDP_STACK ;
typedef TYPE_2__ RUDP_SESSION ;
typedef int LIST ;
typedef int CRYPT ;


 int Add (int *,int *) ;
 int Copy (scalar_t__*,scalar_t__*,int) ;
 int Debug (char*,TYPE_2__*,int ,scalar_t__,scalar_t__) ;
 int Delete (int *,int *) ;
 int Encrypt (int *,scalar_t__*,scalar_t__*,scalar_t__) ;
 int Free (int *) ;
 int FreeCrypt (int *) ;
 int * LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 scalar_t__ MAX (scalar_t__,int) ;
 scalar_t__ MIN (scalar_t__,int ) ;
 int * NewCrypt (scalar_t__*,int) ;
 int * NewListFast (int *) ;
 int RUDPSendPacket (TYPE_1__*,int *,int ,scalar_t__*,scalar_t__,scalar_t__) ;
 int RUDP_MAX_NUM_ACK ;
 int RUDP_MAX_PACKET_SIZE ;
 scalar_t__ RUDP_MAX_SEGMENT_SIZE ;
 scalar_t__ RUDP_PROTOCOL_DNS ;
 scalar_t__ RUDP_PROTOCOL_ICMP ;
 scalar_t__ Rand32 () ;
 scalar_t__ Rand8 () ;
 int ReleaseList (int *) ;
 int SHA1_SIZE ;
 int Sha1 (scalar_t__*,scalar_t__*,scalar_t__) ;
 int WRITE_UINT (scalar_t__*,scalar_t__) ;
 int WRITE_UINT64 (scalar_t__*,int ) ;
 int XorData (scalar_t__*,scalar_t__*,int ,int) ;
 int Zero (scalar_t__*,int) ;

void RUDPSendSegmentNow(RUDP_STACK *r, RUDP_SESSION *se, UINT64 seq_no, void *data, UINT size)
{
 UCHAR dst[RUDP_MAX_PACKET_SIZE];
 UCHAR *p;
 UCHAR *iv;
 LIST *o = ((void*)0);
 UINT i;
 UCHAR padlen;
 UINT current_size;
 UCHAR sign[SHA1_SIZE];
 UCHAR key[SHA1_SIZE];
 UCHAR keygen[SHA1_SIZE * 2];
 CRYPT *c;
 UINT next_iv_pos;
 UINT num_ack;
 UINT icmp_type = 0;

 if (r == ((void*)0) || se == ((void*)0) || (size != 0 && data == ((void*)0)) || (size > RUDP_MAX_SEGMENT_SIZE))
 {
  return;
 }

 Zero(dst, sizeof(dst));
 p = dst;


 Copy(p, se->Key_Send, SHA1_SIZE);
 p += SHA1_SIZE;


 iv = p;
 Copy(iv, se->NextIv, SHA1_SIZE);
 p += SHA1_SIZE;

 for (i = 0;i < MIN(LIST_NUM(se->ReplyAckList), RUDP_MAX_NUM_ACK);i++)
 {
  UINT64 *seq = LIST_DATA(se->ReplyAckList, i);

  if (o == ((void*)0))
  {
   o = NewListFast(((void*)0));
  }

  Add(o, seq);
 }


 WRITE_UINT64(p, r->Now);
 p += sizeof(UINT64);


 WRITE_UINT64(p, se->YourTick);
 p += sizeof(UINT64);


 WRITE_UINT64(p, se->LastRecvCompleteSeqNo);
 p += sizeof(UINT64);


 num_ack = LIST_NUM(o);
 WRITE_UINT(p, num_ack);
 p += sizeof(UINT);

 if (o != ((void*)0))
 {

  for (i = 0;i < LIST_NUM(o);i++)
  {
   UINT64 *seq = LIST_DATA(o, i);

   WRITE_UINT64(p, *seq);
   p += sizeof(UINT64);

   Delete(se->ReplyAckList, seq);

   Free(seq);
  }
  ReleaseList(o);
 }


 WRITE_UINT64(p, seq_no);
 p += sizeof(UINT64);


 Copy(p, data, size);
 p += size;


 padlen = Rand8();
 padlen = MAX(padlen, 1);

 for (i = 0;i < padlen;i++)
 {
  *p = padlen;
  p++;
 }

 current_size = (UINT)(p - dst);


 Copy(keygen + 0, iv, SHA1_SIZE);
 Copy(keygen + SHA1_SIZE, se->Key_Send, SHA1_SIZE);
 Sha1(key, keygen, sizeof(keygen));
 c = NewCrypt(key, sizeof(key));
 Encrypt(c, dst + SHA1_SIZE * 2, dst + SHA1_SIZE * 2, current_size - (SHA1_SIZE * 2));
 FreeCrypt(c);


 Sha1(sign, dst, current_size);
 if (r->Protocol == RUDP_PROTOCOL_DNS || r->Protocol == RUDP_PROTOCOL_ICMP)
 {
  XorData(sign, sign, r->SvcNameHash, SHA1_SIZE);
 }
 Copy(dst, sign, SHA1_SIZE);

 if (r->Protocol == RUDP_PROTOCOL_ICMP)
 {
  icmp_type = se->Icmp_Type;
 }
 else if (r->Protocol == RUDP_PROTOCOL_DNS)
 {
  icmp_type = se->Dns_TranId;
 }
 RUDPSendPacket(r, &se->YourIp, se->YourPort, dst, current_size, icmp_type);

 if (size >= 1)
 {
  se->LastSentTick = r->Now;
 }


 next_iv_pos = Rand32() % (current_size - SHA1_SIZE);
 Copy(se->NextIv, dst + next_iv_pos, SHA1_SIZE);





 if (size >= 1)
 {



 }
}
