
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_8__ {scalar_t__ num_item; } ;
struct TYPE_7__ {int SockEvent; int Event; TYPE_2__* Queue; int SizeOfHeader; } ;
typedef TYPE_1__ TUBE ;


 int InsertQueue (TYPE_2__*,int ) ;
 int IsTubeConnected (TYPE_1__*) ;
 int LockQueue (TYPE_2__*) ;
 int NewTubeData (void*,scalar_t__,void*,int ) ;
 int Set (int ) ;
 int SetSockEvent (int ) ;
 int UnlockQueue (TYPE_2__*) ;

bool TubeSendEx2(TUBE *t, void *data, UINT size, void *header, bool no_flush, UINT max_num_in_queue)
{

 if (t == ((void*)0) || data == ((void*)0) || size == 0)
 {
  return 0;
 }

 if (IsTubeConnected(t) == 0)
 {
  return 0;
 }

 LockQueue(t->Queue);
 {
  if (max_num_in_queue == 0 || (t->Queue->num_item <= max_num_in_queue))
  {
   InsertQueue(t->Queue, NewTubeData(data, size, header, t->SizeOfHeader));
  }
  else
  {
   no_flush = 1;
  }
 }
 UnlockQueue(t->Queue);

 if (no_flush == 0)
 {
  Set(t->Event);
  SetSockEvent(t->SockEvent);
 }

 return 1;
}
