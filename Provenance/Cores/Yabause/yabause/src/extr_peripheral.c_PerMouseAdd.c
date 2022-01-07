
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PortData_struct ;
typedef int PerMouse_struct ;


 int PERMOUSE ;
 int * PerAddPeripheral (int *,int ) ;

PerMouse_struct * PerMouseAdd(PortData_struct * port)
{
   return PerAddPeripheral(port, PERMOUSE);
}
