
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Devices_RestoreHandler (int ,int ) ;
 int ESC_EHCLOS ;
 int ehclos_addr ;

__attribute__((used)) static void Devices_RestoreEHCLOS(void)
{
 Devices_RestoreHandler(ehclos_addr, ESC_EHCLOS);
}
