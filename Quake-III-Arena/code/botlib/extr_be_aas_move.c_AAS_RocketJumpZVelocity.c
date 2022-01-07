
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;


 float AAS_WeaponJumpZVelocity (int ,int) ;

float AAS_RocketJumpZVelocity(vec3_t origin)
{

 return AAS_WeaponJumpZVelocity(origin, 120);
}
