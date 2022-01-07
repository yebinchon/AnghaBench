
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
typedef int pte_osSemaphoreHandle ;
typedef scalar_t__ pte_osResult ;


 int ETIMEDOUT ;
 scalar_t__ PTE_OS_TIMEOUT ;
 scalar_t__ pte_osSemaphorePend (int ,unsigned int*) ;
 unsigned int pte_relmillisecs (struct timespec const*) ;

__attribute__((used)) static int pte_timed_eventwait (pte_osSemaphoreHandle event, const struct timespec *abstime)
{
   unsigned int milliseconds;
   pte_osResult status;
   int retval;

   if (abstime == ((void*)0))
      status = pte_osSemaphorePend(event, ((void*)0));
   else
   {



      milliseconds = pte_relmillisecs (abstime);

      status = pte_osSemaphorePend(event, &milliseconds);
   }


   if (status == PTE_OS_TIMEOUT)
   {
      retval = ETIMEDOUT;
   }
   else
   {
      retval = 0;
   }

   return retval;

}
