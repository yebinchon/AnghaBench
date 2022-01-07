
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef void* UINT ;
struct TYPE_8__ {int ref; } ;
struct TYPE_7__ {int* EnablePtr; void* Port; void* Protocol; int * Listener; int Lock; TYPE_2__* Cedar; } ;
typedef TYPE_1__ DYNAMIC_LISTENER ;
typedef TYPE_2__ CEDAR ;


 int AddRef (int ) ;
 int ApplyDynamicListener (TYPE_1__*) ;
 int NewLock () ;
 TYPE_1__* ZeroMalloc (int) ;

DYNAMIC_LISTENER *NewDynamicListener(CEDAR *c, bool *enable_ptr, UINT protocol, UINT port)
{
 DYNAMIC_LISTENER *d;

 if (c == ((void*)0) || enable_ptr == ((void*)0))
 {
  return ((void*)0);
 }

 d = ZeroMalloc(sizeof(DYNAMIC_LISTENER));

 d->Cedar = c;
 AddRef(d->Cedar->ref);

 d->Lock = NewLock();

 d->EnablePtr = enable_ptr;

 d->Listener = ((void*)0);

 d->Protocol = protocol;
 d->Port = port;

 ApplyDynamicListener(d);

 return d;
}
