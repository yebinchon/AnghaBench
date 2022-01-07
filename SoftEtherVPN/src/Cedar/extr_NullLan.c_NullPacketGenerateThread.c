
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ UINT64 ;
typedef int UINT ;
typedef int UCHAR ;
struct TYPE_2__ {int Cancel; int PacketQueue; int MacAddr; int Id; scalar_t__ Halt; int Event; } ;
typedef int THREAD ;
typedef TYPE_1__ NULL_LAN ;
typedef int BLOCK ;


 int Cancel (int ) ;
 int Copy (int *,int ,int) ;
 int InsertQueue (int ,int *) ;
 int LockQueue (int ) ;
 int * Malloc (int) ;
 int * NewBlock (int *,int,int ) ;
 int NullGenerateMacAddress (int ,int ,int) ;
 int Rand32 () ;
 int StrToMac (int *,char*) ;
 scalar_t__ Tick64 () ;
 int UnlockQueue (int ) ;
 int Wait (int ,int) ;
 int null_lan_broadcast_address ;

void NullPacketGenerateThread(THREAD *t, void *param)
{
 NULL_LAN *n = (NULL_LAN *)param;
 UINT64 end_tick = Tick64() + (UINT64)(60 * 1000);
 UINT seq = 0;

 if (t == ((void*)0) || param == ((void*)0))
 {
  return;
 }

 while (1)
 {





  Wait(n->Event, Rand32() % 1500);
  if (n->Halt)
  {
   break;
  }

  LockQueue(n->PacketQueue);
  {
   UCHAR *data;
   BLOCK *b;
   UINT size = Rand32() % 1500 + 14;
   UCHAR dst_mac[6];

   NullGenerateMacAddress(n->MacAddr, n->Id, seq);



   StrToMac(dst_mac, "00-AC-7A-EF-83-FD");

   data = Malloc(size);
   Copy(data, null_lan_broadcast_address, 6);

   Copy(data + 6, n->MacAddr, 6);
   b = NewBlock(data, size, 0);
   InsertQueue(n->PacketQueue, b);
  }
  UnlockQueue(n->PacketQueue);
  Cancel(n->Cancel);


 }
}
