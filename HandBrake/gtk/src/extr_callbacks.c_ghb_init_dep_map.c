
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* dep_map ;
 void* ghb_resource_get (char*) ;
 void* rev_map ;

void
ghb_init_dep_map()
{
    dep_map = ghb_resource_get("widget-deps");
    rev_map = ghb_resource_get("widget-reverse-deps");
}
