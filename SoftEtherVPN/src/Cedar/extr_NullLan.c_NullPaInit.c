
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_9__ {int PacketGeneratorThread; scalar_t__ Id; int MacAddr; int Event; int PacketQueue; int Cancel; } ;
struct TYPE_8__ {TYPE_1__* PacketAdapter; } ;
struct TYPE_7__ {void* Param; } ;
typedef TYPE_2__ SESSION ;
typedef TYPE_3__ NULL_LAN ;


 int NewCancel () ;
 int NewEvent () ;
 int NewQueue () ;
 int NewThread (int ,TYPE_3__*) ;
 int NullGenerateMacAddress (int ,scalar_t__,int ) ;
 int NullPacketGenerateThread ;
 TYPE_3__* ZeroMalloc (int) ;

bool NullPaInit(SESSION *s)
{
 NULL_LAN *n;
 static UINT id_seed = 0;

 if (s == ((void*)0))
 {
  return 0;
 }

 id_seed++;

 n = ZeroMalloc(sizeof(NULL_LAN));
 n->Id = id_seed;
 s->PacketAdapter->Param = (void *)n;

 n->Cancel = NewCancel();
 n->PacketQueue = NewQueue();
 n->Event = NewEvent();

 NullGenerateMacAddress(n->MacAddr, n->Id, 0);

 n->PacketGeneratorThread = NewThread(NullPacketGenerateThread, n);

 return 1;
}
