
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sem_t ;


 int ENOSYS ;
 int errno ;

int
sem_close (sem_t * sem)
{
  errno = ENOSYS;
  return -1;
}
