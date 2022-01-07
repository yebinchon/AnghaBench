
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pending_subsystem_id ;

int content_get_subsystem(void)
{
   return pending_subsystem_id;
}
