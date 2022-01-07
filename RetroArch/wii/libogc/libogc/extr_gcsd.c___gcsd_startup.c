
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __gcsd_init ;
 int __gcsd_isInserted (int) ;
 int sdgecko_initBufferPool () ;
 int sdgecko_initIODefault () ;

__attribute__((used)) static bool __gcsd_startup(int n)
{
 if(__gcsd_init == 1)
  return __gcsd_isInserted(n);
 sdgecko_initBufferPool();
 sdgecko_initIODefault();
 __gcsd_init = 1;
 return __gcsd_isInserted(n);
}
