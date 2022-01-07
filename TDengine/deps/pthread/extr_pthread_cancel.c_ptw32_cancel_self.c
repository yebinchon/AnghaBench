
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PTW32_EPS_CANCEL ;
 int ptw32_throw (int ) ;

__attribute__((used)) static void
ptw32_cancel_self (void)
{
  ptw32_throw (PTW32_EPS_CANCEL);


}
