
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KPADInit () ;
 int WPADEnableURCC (int) ;
 int WPADEnableWiiRemote (int) ;

__attribute__((used)) static void init_pad_libraries(void)
{

   KPADInit();
   WPADEnableURCC(1);
   WPADEnableWiiRemote(1);

}
