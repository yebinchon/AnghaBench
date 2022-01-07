
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {float phys_gravity; } ;


 TYPE_1__ aassettings ;

float AAS_MaxJumpHeight(float phys_jumpvel)
{
 float phys_gravity;

 phys_gravity = aassettings.phys_gravity;

 return 0.5 * phys_gravity * (phys_jumpvel / phys_gravity) * (phys_jumpvel / phys_gravity);
}
