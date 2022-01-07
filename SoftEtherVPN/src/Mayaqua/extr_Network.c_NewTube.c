
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_4__ {int SizeOfHeader; int SockEvent; int Lock; int Ref; int Queue; int Event; } ;
typedef TYPE_1__ TUBE ;


 int NewEvent () ;
 int NewLock () ;
 int NewQueue () ;
 int NewRef () ;
 int NewSockEvent () ;
 TYPE_1__* ZeroMalloc (int) ;

TUBE *NewTube(UINT size_of_header)
{
 TUBE *t = ZeroMalloc(sizeof(TUBE));

 t->Event = NewEvent();
 t->Queue = NewQueue();
 t->Ref = NewRef();
 t->Lock = NewLock();
 t->SockEvent = NewSockEvent();

 t->SizeOfHeader = size_of_header;

 return t;
}
