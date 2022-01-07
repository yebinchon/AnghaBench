
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int numareas; TYPE_1__* areasettings; } ;
struct TYPE_3__ {scalar_t__ cluster; } ;


 TYPE_2__ aasworld ;

void AAS_RemoveClusterAreas(void)
{
 int i;

 for (i = 1; i < aasworld.numareas; i++)
 {
  aasworld.areasettings[i].cluster = 0;
 }
}
