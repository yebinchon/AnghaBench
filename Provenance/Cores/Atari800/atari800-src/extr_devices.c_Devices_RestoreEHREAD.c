
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Devices_RestoreHandler (int ,int ) ;
 int ESC_EHREAD ;
 int ehread_addr ;

__attribute__((used)) static void Devices_RestoreEHREAD(void)
{
 Devices_RestoreHandler(ehread_addr, ESC_EHREAD);
}
