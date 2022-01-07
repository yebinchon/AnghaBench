
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Lock (int ) ;
 int * SiNewServer (int) ;
 int Unlock (int ) ;
 int * server ;
 int server_lock ;

void StStartServer(bool bridge)
{
 Lock(server_lock);
 {
  if (server != ((void*)0))
  {

   Unlock(server_lock);
   return;
  }


  server = SiNewServer(bridge);
 }
 Unlock(server_lock);


}
