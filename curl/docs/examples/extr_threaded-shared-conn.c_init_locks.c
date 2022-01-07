
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int connlock ;
 int pthread_mutex_init (int *,int *) ;

__attribute__((used)) static void init_locks(void)
{
  pthread_mutex_init(&connlock, ((void*)0));
}
