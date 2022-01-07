
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int pte_concurrency ;

int pthread_setconcurrency (int level)
{
   if (level < 0)
      return EINVAL;

   pte_concurrency = level;
   return 0;
}
