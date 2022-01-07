
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PortData_struct ;
typedef int PerGun_struct ;


 int PERGUN ;
 int * PerAddPeripheral (int *,int ) ;

PerGun_struct * PerGunAdd(PortData_struct * port)
{
   return PerAddPeripheral(port, PERGUN);
}
