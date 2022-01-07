
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * pthread_barrierattr_t ;


 int EINVAL ;
 int free (int *) ;

int
pthread_barrierattr_destroy (pthread_barrierattr_t * attr)
{
  int result = 0;

  if (attr == ((void*)0) || *attr == ((void*)0))
    {
      result = EINVAL;
    }
  else
    {
      pthread_barrierattr_t ba = *attr;

      *attr = ((void*)0);
      free (ba);
    }

  return (result);
}
