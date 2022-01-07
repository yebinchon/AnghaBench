
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Result ;


 int HB_GetBootloaderAddresses (void**,void**) ;
 scalar_t__ R_FAILED (int ) ;
 int callBootloader_1x ;
 int hbInit () ;
 int setArgs_1x ;

__attribute__((used)) static bool init(void)
{
 Result res = hbInit();
 if (R_FAILED(res))
  return 0;

 HB_GetBootloaderAddresses((void**)&callBootloader_1x, (void**)&setArgs_1x);
 return 1;
}
