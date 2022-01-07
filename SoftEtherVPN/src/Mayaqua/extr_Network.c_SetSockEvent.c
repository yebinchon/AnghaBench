
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SOCK_EVENT ;


 int UnixSetSockEvent (int *) ;
 int Win32SetSockEvent (int *) ;

void SetSockEvent(SOCK_EVENT *event)
{



 UnixSetSockEvent(event);

}
