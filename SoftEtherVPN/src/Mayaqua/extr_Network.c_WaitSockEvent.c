
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int SOCK_EVENT ;


 int UnixWaitSockEvent (int *,int ) ;
 int Win32WaitSockEvent (int *,int ) ;

bool WaitSockEvent(SOCK_EVENT *event, UINT timeout)
{
 bool ret = 0;



 ret = UnixWaitSockEvent(event, timeout);

 return ret;
}
