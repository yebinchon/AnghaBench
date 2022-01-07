
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_10__ {int Size; int Buf; } ;
struct TYPE_9__ {int DummyMark; int DummyDestIP; int DummySrcIp; } ;
typedef int PRAND ;
typedef TYPE_1__ IPTABLES_ENTRY ;
typedef TYPE_2__ BUF ;


 int FreeBuf (TYPE_2__*) ;
 int FreePRand (int *) ;
 int GenerateDummyIp (int *,int *) ;
 int GenerateDummyMark (int *) ;
 TYPE_2__* NewBuf () ;
 int * NewPRand (int ,int ) ;
 int SHA1_SIZE ;
 int WriteBuf (TYPE_2__*,void*,int ) ;
 int WriteBufInt (TYPE_2__*,int ) ;
 int WriteBufStr (TYPE_2__*,char*) ;

void GenerateDummyIpAndMark(void *hash_seed, IPTABLES_ENTRY *e, UINT id)
{
 PRAND *p;
 BUF *b;
 if (hash_seed == ((void*)0) || e == ((void*)0))
 {
  return;
 }

 b = NewBuf();
 WriteBufInt(b, id);
 WriteBuf(b, hash_seed, SHA1_SIZE);
 WriteBufStr(b, "20151002");

 p = NewPRand(b->Buf, b->Size);
 FreeBuf(b);

 GenerateDummyIp(p, &e->DummySrcIp);
 GenerateDummyIp(p, &e->DummyDestIP);
 e->DummyMark = GenerateDummyMark(p);

 FreePRand(p);
}
