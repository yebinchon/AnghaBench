
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hidpad_retrode_data {int dummy; } ;


 int free (struct hidpad_retrode_data*) ;
 scalar_t__ port_count ;
 int ** port_device ;

__attribute__((used)) static void hidpad_retrode_deinit(void *data)
{
   struct hidpad_retrode_data *device = (struct hidpad_retrode_data*)data;

   if (device)
      free(device);

   port_count = 0;
   port_device[0] = ((void*)0);
   port_device[1] = ((void*)0);
   port_device[2] = ((void*)0);
   port_device[3] = ((void*)0);
}
