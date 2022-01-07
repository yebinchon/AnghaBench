
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hidpad_ps4_data {int dummy; } ;


 int free (struct hidpad_ps4_data*) ;

__attribute__((used)) static void hidpad_ps4_deinit(void *data)
{
   struct hidpad_ps4_data *device = (struct hidpad_ps4_data*)data;

   if (device)
      free(device);
}
