
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_18__ {int NatDoCancelFlag; TYPE_2__** TmpBuf; int NatTable; scalar_t__ HaltNat; int Cancel; int Now; int SockEvent; } ;
typedef TYPE_1__ VH ;
typedef scalar_t__ UINT ;
struct TYPE_19__ {int Protocol; int DisconnectNow; } ;
typedef TYPE_2__ NAT_ENTRY ;


 int Cancel (int ) ;
 int Free (TYPE_2__**) ;
 TYPE_2__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int LockVirtual (TYPE_1__*) ;
 TYPE_2__** Malloc (int ) ;



 int NAT_TMPBUF_SIZE ;

 int NatTransactDns (TYPE_1__*,TYPE_2__*) ;
 int NatTransactIcmp (TYPE_1__*,TYPE_2__*) ;
 int NatTransactTcp (TYPE_1__*,TYPE_2__*) ;
 int NatTransactUdp (TYPE_1__*,TYPE_2__*) ;
 int SELECT_TIME ;
 int Tick64 () ;
 TYPE_2__** ToArray (int ) ;
 int UnlockVirtual (TYPE_1__*) ;
 int WaitSockEvent (int ,int ) ;

void NatThreadMain(VH *v)
{
 bool halt_flag;

 if (v == ((void*)0))
 {
  return;
 }

 v->TmpBuf = Malloc(NAT_TMPBUF_SIZE);

 while (1)
 {

  WaitSockEvent(v->SockEvent, SELECT_TIME);

  halt_flag = 0;

  LockVirtual(v);
  {

   UINT i, num;

   v->Now = Tick64();
   v->NatDoCancelFlag = 0;

LIST_ELEMENT_DELETED:
   num = LIST_NUM(v->NatTable);
   for (i = 0;i < num;i++)
   {
    NAT_ENTRY *n = LIST_DATA(v->NatTable, i);

    switch (n->Protocol)
    {
    case 129:
     if (NatTransactTcp(v, n) == 0)
     {
      goto LIST_ELEMENT_DELETED;
     }
     break;

    case 128:
     if (NatTransactUdp(v, n) == 0)
     {
      goto LIST_ELEMENT_DELETED;
     }
     break;

    case 130:
     if (NatTransactIcmp(v, n) == 0)
     {
      goto LIST_ELEMENT_DELETED;
     }
     break;

    case 131:
     if (NatTransactDns(v, n) == 0)
     {
      goto LIST_ELEMENT_DELETED;
     }
     break;
    }
   }

   if (v->NatDoCancelFlag)
   {

    Cancel(v->Cancel);
   }


   if (v->HaltNat)
   {
    halt_flag = 1;
   }
  }
  UnlockVirtual(v);

  if (halt_flag)
  {

   LockVirtual(v);
   {
    UINT num = LIST_NUM(v->NatTable);
    NAT_ENTRY **nn = ToArray(v->NatTable);
    UINT i;

    for (i = 0;i < num;i++)
    {
     NAT_ENTRY *n = nn[i];
     n->DisconnectNow = 1;

     switch (n->Protocol)
     {
     case 129:
      NatTransactTcp(v, n);
      break;

     case 128:
      NatTransactUdp(v, n);
      break;

     case 130:
      NatTransactIcmp(v, n);
      break;

     case 131:
      NatTransactDns(v, n);
      break;
     }
    }

    Free(nn);
   }
   UnlockVirtual(v);
   break;
  }
 }

 Free(v->TmpBuf);
}
