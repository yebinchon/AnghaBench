
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PTW32_INTERLOCKED_SIZEPTR ;
typedef scalar_t__ PTW32_INTERLOCKED_SIZE ;
typedef scalar_t__ PTW32_INTERLOCKED_LONG ;
typedef scalar_t__ HANDLE ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateEvent (int *,int ,int ,int *) ;
 int INFINITE ;
 int PTW32_FALSE ;
 scalar_t__ PTW32_INTERLOCKED_COMPARE_EXCHANGE_SIZE (int ,scalar_t__,scalar_t__) ;
 scalar_t__ PTW32_INTERLOCKED_EXCHANGE_ADD_SIZE (int ,scalar_t__) ;
 int WaitForSingleObject (scalar_t__,int ) ;

void
ptw32_mcs_flag_wait (HANDLE * flag)
{
  if ((PTW32_INTERLOCKED_LONG)0 ==
        PTW32_INTERLOCKED_EXCHANGE_ADD_SIZE((PTW32_INTERLOCKED_SIZEPTR)flag,
                                            (PTW32_INTERLOCKED_SIZE)0))
    {


      HANDLE e = CreateEvent(((void*)0), PTW32_FALSE, PTW32_FALSE, ((void*)0));

      if ((PTW32_INTERLOCKED_SIZE)0 == PTW32_INTERLOCKED_COMPARE_EXCHANGE_SIZE(
                     (PTW32_INTERLOCKED_SIZEPTR)flag,
                     (PTW32_INTERLOCKED_SIZE)e,
                     (PTW32_INTERLOCKED_SIZE)0))
 {

   WaitForSingleObject(e, INFINITE);
 }

      CloseHandle(e);
    }
}
