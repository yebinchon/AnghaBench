
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int LISTENER ;
typedef int CEDAR ;


 int * NewListenerEx (int *,int ,int ,int ,int *) ;
 int TCPAcceptedThread ;

LISTENER *NewListener(CEDAR *cedar, UINT proto, UINT port)
{
 return NewListenerEx(cedar, proto, port, TCPAcceptedThread, ((void*)0));
}
