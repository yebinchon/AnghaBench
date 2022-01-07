
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hidpad_wiiugca_data {int dummy; } ;


 int free (struct hidpad_wiiugca_data*) ;

__attribute__((used)) static void hidpad_wiiugca_deinit(void *data)
{
   struct hidpad_wiiugca_data *device = (struct hidpad_wiiugca_data*)data;

   if (device)
      free(device);
}
