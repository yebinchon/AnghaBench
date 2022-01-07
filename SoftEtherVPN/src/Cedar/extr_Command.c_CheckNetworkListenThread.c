
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int c ;
typedef int X ;
typedef int UINT ;
struct TYPE_12__ {TYPE_1__* ListenSocket; } ;
struct TYPE_11__ {int * x; int * k; TYPE_1__* s; } ;
struct TYPE_10__ {int ref; } ;
typedef int THREAD ;
typedef TYPE_1__ SOCK ;
typedef int NAME ;
typedef int LIST ;
typedef int K ;
typedef TYPE_2__ CHECK_NETWORK_2 ;
typedef TYPE_3__ CHECK_NETWORK_1 ;


 TYPE_1__* Accept (TYPE_1__*) ;
 int AddRef (int ) ;
 int CheckNetworkAcceptThread ;
 int FreeK (int *) ;
 int FreeName (int *) ;
 int FreeX (int *) ;
 int INFINITE ;
 int Insert (int *,int *) ;
 int * LIST_DATA (int *,int) ;
 int LIST_NUM (int *) ;
 TYPE_1__* Listen (int) ;
 int * NewList (int *) ;
 int * NewName (char*,char*,char*,char*,char*,char*) ;
 int * NewRootX (int *,int *,int *,int,int *) ;
 int * NewThread (int ,TYPE_2__*) ;
 int NoticeThreadInit (int *) ;
 int ReleaseList (int *) ;
 int ReleaseSock (TYPE_1__*) ;
 int ReleaseThread (int *) ;
 int RsaGen (int **,int **,int) ;
 int WaitThread (int *,int ) ;
 int Zero (TYPE_2__*,int) ;

void CheckNetworkListenThread(THREAD *thread, void *param)
{
 CHECK_NETWORK_1 *c = (CHECK_NETWORK_1 *)param;
 SOCK *s;
 UINT i;
 K *pub, *pri;
 X *x;
 LIST *o = NewList(((void*)0));
 NAME *name = NewName(L"Test", L"Test", L"Test", L"JP", L"Ibaraki", L"Tsukuba");

 RsaGen(&pri, &pub, 1024);
 x = NewRootX(pub, pri, name, 1000, ((void*)0));

 FreeName(name);

 for (i = 1025;;i++)
 {
  s = Listen(i);
  if (s != ((void*)0))
  {
   break;
  }
 }

 c->ListenSocket = s;
 AddRef(s->ref);

 NoticeThreadInit(thread);

 while (1)
 {
  SOCK *new_sock = Accept(s);

  if (new_sock == ((void*)0))
  {
   break;
  }
  else
  {
   CHECK_NETWORK_2 c;
   THREAD *t;

   Zero(&c, sizeof(c));
   c.s = new_sock;
   c.k = pri;
   c.x = x;

   t = NewThread(CheckNetworkAcceptThread, &c);
   Insert(o, t);
  }
 }

 for (i = 0;i < LIST_NUM(o);i++)
 {
  THREAD *t = LIST_DATA(o, i);
  WaitThread(t, INFINITE);
  ReleaseThread(t);
 }

 FreeK(pri);
 FreeK(pub);

 FreeX(x);

 ReleaseSock(s);
 ReleaseList(o);
}
