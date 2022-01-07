
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IsBridgeSupported () ;
 scalar_t__ IsEthSupported () ;

bool IsNeedWinPcap()
{
 if (IsBridgeSupported() == 0)
 {

  return 0;
 }
 else
 {

  if (IsEthSupported())
  {

   return 0;
  }
  else
  {

   return 1;
  }
 }
}
