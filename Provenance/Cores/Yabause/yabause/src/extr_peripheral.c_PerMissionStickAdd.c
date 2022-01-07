
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PortData_struct ;
typedef int PerAnalog_struct ;


 int PERMISSIONSTICK ;
 int * PerAddPeripheral (int *,int ) ;

PerAnalog_struct * PerMissionStickAdd(PortData_struct * port)
{
   return PerAddPeripheral(port, PERMISSIONSTICK);
}
