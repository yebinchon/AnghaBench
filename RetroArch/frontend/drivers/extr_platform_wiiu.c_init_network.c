
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACConnect () ;
 int ACInitialize () ;
 int network_init () ;
 int socket_lib_init () ;

__attribute__((used)) static void init_network(void)
{
   ACInitialize();
   ACConnect();



   network_init();

}
