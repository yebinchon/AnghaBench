
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int disk_ejected ;

__attribute__((used)) static bool disk_get_eject_state(void)
{
 return disk_ejected;
}
