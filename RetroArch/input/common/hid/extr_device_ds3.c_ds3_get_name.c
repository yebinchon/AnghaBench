
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ds3_instance_t ;



__attribute__((used)) static const char *ds3_get_name(void *data)
{
   ds3_instance_t *pad = (ds3_instance_t *)data;
   return "Sony DualShock 3";
}
