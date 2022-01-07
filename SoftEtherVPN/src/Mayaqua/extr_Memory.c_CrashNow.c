
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int UCHAR ;


 scalar_t__ Rand32 () ;
 int Rand8 () ;

void CrashNow()
{
 while (1)
 {
  UINT r = Rand32();
  UCHAR *c = (UCHAR *)r;

  *c = Rand8();
 }
}
