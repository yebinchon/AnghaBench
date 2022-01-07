
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ UINT ;
typedef int UCHAR ;
struct TYPE_12__ {int DisableIPv6Listener; int ref; } ;
struct TYPE_11__ {int LocalOnly; int ShadowIPv6; scalar_t__ volatile* NatTGlobalUdpPort; int EnableConditionalAccept; int ShadowListener; TYPE_2__* Cedar; int RandPortId; int Event; scalar_t__ Port; scalar_t__ Protocol; int ref; int lock; void* ThreadParam; int * ThreadProc; } ;
typedef int THREAD_PROC ;
typedef int THREAD ;
typedef TYPE_1__ LISTENER ;
typedef TYPE_2__ CEDAR ;


 int AddListener (TYPE_2__*,TYPE_1__*) ;
 int AddRef (int ) ;
 scalar_t__ LISTENER_DNS ;
 scalar_t__ LISTENER_ICMP ;
 scalar_t__ LISTENER_INPROC ;
 scalar_t__ LISTENER_REVERSE ;
 scalar_t__ LISTENER_RUDP ;
 scalar_t__ LISTENER_TCP ;
 int ListenerThread ;
 int NewEvent () ;
 int NewListenerEx3 (TYPE_2__*,scalar_t__,scalar_t__,int *,void*,int,int) ;
 int NewLock () ;
 int NewRef () ;
 int * NewThread (int ,TYPE_1__*) ;
 int ReleaseThread (int *) ;
 int SLog (TYPE_2__*,char*,scalar_t__) ;
 int WaitThreadInit (int *) ;
 TYPE_1__* ZeroMalloc (int) ;

LISTENER *NewListenerEx5(CEDAR *cedar, UINT proto, UINT port, THREAD_PROC *proc, void *thread_param, bool local_only, bool shadow_ipv6,
       volatile UINT *natt_global_udp_port, UCHAR rand_port_id, bool enable_ca)
{
 LISTENER *r;
 THREAD *t;

 if ((proto == LISTENER_TCP && port == 0) || cedar == ((void*)0))
 {
  return ((void*)0);
 }

 if (proto != LISTENER_TCP && proto != LISTENER_INPROC &&
  proto != LISTENER_RUDP && proto != LISTENER_ICMP && proto != LISTENER_DNS &&
  proto != LISTENER_REVERSE)
 {
  return ((void*)0);
 }

 r = ZeroMalloc(sizeof(LISTENER));

 r->ThreadProc = proc;
 r->ThreadParam = thread_param;
 r->Cedar = cedar;
 AddRef(r->Cedar->ref);
 r->lock = NewLock();
 r->ref = NewRef();
 r->Protocol = proto;
 r->Port = port;
 r->Event = NewEvent();


 r->LocalOnly = local_only;
 r->ShadowIPv6 = shadow_ipv6;
 r->NatTGlobalUdpPort = natt_global_udp_port;
 r->RandPortId = rand_port_id;
 r->EnableConditionalAccept = enable_ca;

 if (r->ShadowIPv6 == 0)
 {
  if (proto == LISTENER_TCP)
  {
   SLog(cedar, "LS_LISTENER_START_1", port);
  }
 }


 t = NewThread(ListenerThread, r);
 WaitThreadInit(t);
 ReleaseThread(t);

 if (r->ShadowIPv6 == 0 && proto == LISTENER_TCP)
 {
  if (r->Cedar->DisableIPv6Listener == 0)
  {

   r->ShadowListener = NewListenerEx3(cedar, proto, port, proc, thread_param,
    local_only, 1);
  }
 }

 if (r->ShadowIPv6 == 0)
 {

  AddListener(cedar, r);
 }

 return r;
}
