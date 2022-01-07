
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PortData_struct ;
typedef int PerAnalog_struct ;


 int PERWHEEL ;
 int * PerAddPeripheral (int *,int ) ;

PerAnalog_struct * PerWheelAdd(PortData_struct * port)
{
   return PerAddPeripheral(port, PERWHEEL);
}
