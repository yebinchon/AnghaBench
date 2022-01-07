
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VCOS_STATUS_T ;
typedef int VCOS_ONCE_T ;



 int VCOS_EACCESS ;
 int VCOS_EINVAL ;
 int VCOS_SUCCESS ;
 int errno ;
 int pthread_once (int *,void (*) ()) ;
 int vcos_assert (int ) ;

VCOS_STATUS_T vcos_once(VCOS_ONCE_T *once_control,
                        void (*init_routine)(void))
{
   int rc = pthread_once(once_control, init_routine);
   if (rc != 0)
   {
      switch (errno)
      {
      case 128:
         return VCOS_EINVAL;
      default:
         vcos_assert(0);
         return VCOS_EACCESS;
      }
   }
   else
   {
      return VCOS_SUCCESS;
   }
}
