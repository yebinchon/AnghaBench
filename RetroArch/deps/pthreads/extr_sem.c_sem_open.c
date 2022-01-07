
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;


 int ENOSYS ;
 int errno ;

int sem_open (const char *name, int oflag, mode_t mode, unsigned int value)
{
   errno = ENOSYS;
   return -1;
}
