
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PTW32_INTERLOCKED_SIZEPTR ;
typedef scalar_t__ PTW32_INTERLOCKED_SIZE ;
typedef scalar_t__ HANDLE ;


 scalar_t__ PTW32_INTERLOCKED_COMPARE_EXCHANGE_SIZE (int ,scalar_t__,scalar_t__) ;
 int SetEvent (scalar_t__) ;

void
ptw32_mcs_flag_set (HANDLE * flag)
{
  HANDLE e = (HANDLE)(PTW32_INTERLOCKED_SIZE)PTW32_INTERLOCKED_COMPARE_EXCHANGE_SIZE(
      (PTW32_INTERLOCKED_SIZEPTR)flag,
      (PTW32_INTERLOCKED_SIZE)-1,
      (PTW32_INTERLOCKED_SIZE)0);
  if ((HANDLE)0 != e)
    {

      SetEvent(e);
    }
}
