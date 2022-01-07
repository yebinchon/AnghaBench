
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UINT ;
typedef int UCHAR ;
struct TYPE_8__ {int UseHMac; TYPE_1__* BulkRecvKey; int * Key_Recv; } ;
struct TYPE_7__ {scalar_t__ Protocol; int SvcNameHash; } ;
struct TYPE_6__ {int * Data; } ;
typedef TYPE_2__ RUDP_STACK ;
typedef TYPE_3__ RUDP_SESSION ;


 scalar_t__ Cmp (int *,int *,int) ;
 int Copy (int *,int *,int) ;
 int HMacSha1 (int *,int *,int,int *,int) ;
 scalar_t__ RUDP_PROTOCOL_DNS ;
 scalar_t__ RUDP_PROTOCOL_ICMP ;
 int SHA1_SIZE ;
 int Sha1 (int *,int *,int) ;
 int XorData (int *,int *,int ,int) ;

bool RUDPCheckSignOfRecvPacket(RUDP_STACK *r, RUDP_SESSION *se, void *recv_data, UINT recv_size)
{
 UCHAR sign[SHA1_SIZE];
 UCHAR sign2[SHA1_SIZE];
 UCHAR *p;
 UINT size;

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

 if (r->Protocol == RUDP_PROTOCOL_DNS || r->Protocol == RUDP_PROTOCOL_ICMP)
 {
  XorData(sign2, sign2, r->SvcNameHash, SHA1_SIZE);
 }

 Copy(p, sign, SHA1_SIZE);
 if (Cmp(sign, sign2, SHA1_SIZE) == 0)
 {
  return 1;
 }

 if (se->BulkRecvKey == ((void*)0))
 {
  return 0;
 }


 if (se->UseHMac == 0)
 {
  Copy(sign, p, SHA1_SIZE);
  Copy(p, se->BulkRecvKey->Data, SHA1_SIZE);
  Sha1(sign2, p, recv_size);
  Copy(p, sign, SHA1_SIZE);

  if (Cmp(sign, sign2, SHA1_SIZE) == 0)
  {
   return 1;
  }
 }

 HMacSha1(sign2, se->BulkRecvKey->Data, SHA1_SIZE, p + SHA1_SIZE, size - SHA1_SIZE);
 if (Cmp(p, sign2, SHA1_SIZE) == 0)
 {
  se->UseHMac = 1;
  return 1;
 }

 return 0;
}
