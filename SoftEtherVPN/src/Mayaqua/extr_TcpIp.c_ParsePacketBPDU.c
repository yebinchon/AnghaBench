
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
typedef int UCHAR ;
struct TYPE_4__ {int * BpduHeader; } ;
struct TYPE_5__ {int TypeL3; TYPE_1__ L3; } ;
typedef TYPE_2__ PKT ;
typedef int BPDU_HEADER ;


 int L3_BPDU ;

bool ParsePacketBPDU(PKT *p, UCHAR *buf, UINT size)
{

 if (p == ((void*)0) || buf == ((void*)0))
 {
  return 0;
 }


 if (size < sizeof(BPDU_HEADER))
 {
  return 1;
 }


 p->L3.BpduHeader = (BPDU_HEADER *)buf;
 p->TypeL3 = L3_BPDU;

 buf += sizeof(BPDU_HEADER);
 size -= sizeof(BPDU_HEADER);

 return 1;
}
