
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PTW32_TRUE ;
 scalar_t__ pthread_key_create (int *,int *) ;
 int ptw32_cleanupKey ;
 int ptw32_processInitialized ;
 int ptw32_processTerminate () ;
 int ptw32_selfThreadKey ;

int
ptw32_processInitialize (void)
{
  if (ptw32_processInitialized)
    {







      return PTW32_TRUE;
    }

  ptw32_processInitialized = PTW32_TRUE;




  if ((pthread_key_create (&ptw32_selfThreadKey, ((void*)0)) != 0) ||
      (pthread_key_create (&ptw32_cleanupKey, ((void*)0)) != 0))
    {

      ptw32_processTerminate ();
    }

  return (ptw32_processInitialized);

}
