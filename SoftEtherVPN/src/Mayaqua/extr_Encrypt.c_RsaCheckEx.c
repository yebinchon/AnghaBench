
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;


 scalar_t__ RsaCheck () ;
 int SleepThread (int) ;

bool RsaCheckEx()
{
 UINT num = 20;
 UINT i;

 for (i = 0;i < num;i++)
 {
  if (RsaCheck())
  {
   return 1;
  }

  SleepThread(100);
 }

 return 0;
}
