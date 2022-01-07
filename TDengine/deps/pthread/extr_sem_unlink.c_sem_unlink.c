
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOSYS ;
 int errno ;

int
sem_unlink (const char *name)
{
  errno = ENOSYS;
  return -1;
}
