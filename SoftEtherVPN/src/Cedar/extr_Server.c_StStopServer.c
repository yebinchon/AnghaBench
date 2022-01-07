
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Lock (int ) ;
 int SiReleaseServer (int *) ;
 int StopCedarLog () ;
 int Unlock (int ) ;
 int * server ;
 int server_lock ;

void StStopServer()
{
 Lock(server_lock);
 {
  if (server == ((void*)0))
  {

   Unlock(server_lock);
   return;
  }


  SiReleaseServer(server);
  server = ((void*)0);
 }
 Unlock(server_lock);

 StopCedarLog();
}
