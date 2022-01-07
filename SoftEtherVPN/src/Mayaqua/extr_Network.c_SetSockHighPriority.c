
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SOCK ;


 int SetSockTos (int *,int) ;

void SetSockHighPriority(SOCK *s, bool flag)
{

 if (s == ((void*)0))
 {
  return;
 }

 SetSockTos(s, (flag ? 16 : 0));
}
