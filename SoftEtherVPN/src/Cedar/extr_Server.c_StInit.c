
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * NewLock () ;
 int * server_lock ;

void StInit()
{
 if (server_lock != ((void*)0))
 {
  return;
 }

 server_lock = NewLock();
}
