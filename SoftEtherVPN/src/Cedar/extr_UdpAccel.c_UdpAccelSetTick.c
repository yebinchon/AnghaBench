
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT64 ;
struct TYPE_3__ {int Now; } ;
typedef TYPE_1__ UDP_ACCEL ;



void UdpAccelSetTick(UDP_ACCEL *a, UINT64 tick64)
{

 if (a == ((void*)0))
 {
  return;
 }

 a->Now = tick64;
}
