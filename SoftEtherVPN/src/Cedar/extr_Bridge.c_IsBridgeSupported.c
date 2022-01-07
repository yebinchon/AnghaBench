
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_2__ {int OsType; } ;


 TYPE_1__* GetOsInfo () ;
 int IsEthSupported () ;
 int MsIsAdmin () ;
 scalar_t__ OS_IS_WINDOWS (int ) ;

bool IsBridgeSupported()
{
 UINT type = GetOsInfo()->OsType;

 if (OS_IS_WINDOWS(type))
 {
  if (IsEthSupported())
  {
   return 1;
  }
  else
  {
   bool ret = 0;





   return ret;
  }
 }
 else
 {
  return IsEthSupported();
 }
}
