
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hostname ;
typedef int THREAD ;
typedef int IP ;


 int AddHostCache (int *,char*) ;
 int AddWaitThread (int *) ;
 int DelWaitThread (int *) ;
 int Free (int *) ;
 scalar_t__ GetHostNameInner (char*,int,int *) ;
 int NoticeThreadInit (int *) ;

void GetHostNameThread(THREAD *t, void *p)
{
 IP *ip;
 char hostname[256];

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 ip = (IP *)p;

 AddWaitThread(t);

 NoticeThreadInit(t);

 if (GetHostNameInner(hostname, sizeof(hostname), ip))
 {
  AddHostCache(ip, hostname);
 }

 Free(ip);

 DelWaitThread(t);
}
