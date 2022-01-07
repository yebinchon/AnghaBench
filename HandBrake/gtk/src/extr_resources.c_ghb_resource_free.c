
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ghb_value_free (int *) ;
 int resources ;

void
ghb_resource_free()
{
    ghb_value_free(&resources);
}
