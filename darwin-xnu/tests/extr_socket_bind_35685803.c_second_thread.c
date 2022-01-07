
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SocketInfoRef ;


 int bind_sockets (int ,char*) ;

__attribute__((used)) static void *
second_thread(void * arg)
{
 SocketInfoRef info = (SocketInfoRef)arg;

 bind_sockets(info, "second");
 return (((void*)0));
}
