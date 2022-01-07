
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;


 int VectorSubtract (int ,int ,int ) ;

void AAS_AirControl(vec3_t start, vec3_t end, vec3_t velocity, vec3_t cmdmove)
{
 vec3_t dir;

 VectorSubtract(end, start, dir);
}
