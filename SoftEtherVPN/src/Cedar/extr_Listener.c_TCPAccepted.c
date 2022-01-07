
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int tmp ;
typedef int UINT ;
struct TYPE_13__ {int AcceptingSockets; } ;
struct TYPE_12__ {scalar_t__ ThreadProc; TYPE_4__* Cedar; } ;
struct TYPE_11__ {int RemoteIP; } ;
struct TYPE_10__ {TYPE_2__* s; TYPE_3__* r; } ;
typedef int THREAD ;
typedef TYPE_1__ TCP_ACCEPTED_PARAM ;
typedef TYPE_2__ SOCK ;
typedef TYPE_3__ LISTENER ;
typedef TYPE_4__ CEDAR ;


 int Free (TYPE_1__*) ;
 int GetNumIpClient (int *) ;
 int IPToStr (char*,int,int *) ;
 int Inc (int ) ;
 int MAX_SIZE ;
 int * NewThread (scalar_t__,TYPE_1__*) ;
 int ReleaseThread (int *) ;
 scalar_t__ TCPAcceptedThread ;
 int WaitThreadInit (int *) ;
 TYPE_1__* ZeroMalloc (int) ;

void TCPAccepted(LISTENER *r, SOCK *s)
{
 TCP_ACCEPTED_PARAM *data;
 THREAD *t;
 char tmp[MAX_SIZE];
 UINT num_clients_from_this_ip = 0;
 CEDAR *cedar;

 if (r == ((void*)0) || s == ((void*)0))
 {
  return;
 }

 cedar = r->Cedar;

 num_clients_from_this_ip = GetNumIpClient(&s->RemoteIP);


 IPToStr(tmp, sizeof(tmp), &s->RemoteIP);

 data = ZeroMalloc(sizeof(TCP_ACCEPTED_PARAM));
 data->r = r;
 data->s = s;

 if (r->ThreadProc == TCPAcceptedThread)
 {
  Inc(cedar->AcceptingSockets);
 }

 t = NewThread(r->ThreadProc, data);
 WaitThreadInit(t);
 Free(data);
 ReleaseThread(t);
}
