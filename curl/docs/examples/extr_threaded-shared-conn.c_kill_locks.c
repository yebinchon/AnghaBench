
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int connlock ;
 int pthread_mutex_destroy (int *) ;

__attribute__((used)) static void kill_locks(void)
{
  pthread_mutex_destroy(&connlock);
}
