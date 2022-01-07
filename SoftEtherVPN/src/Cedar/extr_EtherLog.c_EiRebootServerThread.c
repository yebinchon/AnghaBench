
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int THREAD ;


 int ElStart () ;
 int ElStop () ;
 int * el ;

void EiRebootServerThread(THREAD *thread, void *param)
{

 if (thread == ((void*)0))
 {
  return;
 }

 if (el == ((void*)0))
 {
  return;
 }


 ElStop();


 ElStart();
}
