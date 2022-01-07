
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Devices_RestoreHandler (int ,int ) ;
 int ESC_EHWRIT ;
 int ehwrit_addr ;

__attribute__((used)) static void Devices_RestoreEHWRIT(void)
{
 Devices_RestoreHandler(ehwrit_addr, ESC_EHWRIT);
}
