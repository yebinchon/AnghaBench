
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Devices_IgnoreReady ;
 int ESC_AddEscRts (int ,int ,int ) ;
 int ESC_EHWRIT ;
 int ehwrit_addr ;

__attribute__((used)) static void Devices_InstallIgnoreReady(void)
{
 ESC_AddEscRts(ehwrit_addr, ESC_EHWRIT, Devices_IgnoreReady);
}
