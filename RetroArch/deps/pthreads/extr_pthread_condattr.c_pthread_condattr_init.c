
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * pthread_condattr_t ;


 int ENOMEM ;
 scalar_t__ calloc (int,int) ;

int pthread_condattr_init (pthread_condattr_t * attr)
{
   pthread_condattr_t attr_result;
   int result = 0;

   attr_result = (pthread_condattr_t) calloc (1, sizeof (*attr_result));

   if (attr_result == ((void*)0))
      result = ENOMEM;

   *attr = attr_result;

   return result;
}
