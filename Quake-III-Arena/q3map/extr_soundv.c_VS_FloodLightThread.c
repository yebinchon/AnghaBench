
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VS_FloodLight (int ) ;
 int * vsounds ;

void VS_FloodLightThread(int num)
{
 VS_FloodLight(vsounds[num]);
}
