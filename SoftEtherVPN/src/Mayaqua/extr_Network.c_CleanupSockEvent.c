
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SOCK_EVENT ;


 int UnixCleanupSockEvent (int *) ;
 int Win32CleanupSockEvent (int *) ;

void CleanupSockEvent(SOCK_EVENT *event)
{



 UnixCleanupSockEvent(event);

}
