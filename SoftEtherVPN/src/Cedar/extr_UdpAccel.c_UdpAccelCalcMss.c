
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int USHORT ;
typedef int UINT64 ;
typedef int UINT ;
struct TYPE_3__ {int PlainTextMode; scalar_t__ IsIPv6; } ;
typedef TYPE_1__ UDP_ACCEL ;
typedef int UCHAR ;


 int MTU_FOR_PPPOE ;
 scalar_t__ UDP_ACCELERATION_PACKET_IV_SIZE ;

UINT UdpAccelCalcMss(UDP_ACCEL *a)
{
 UINT ret;


 if (a == ((void*)0))
 {
  return 0;
 }

 ret = MTU_FOR_PPPOE;


 if (a->IsIPv6)
 {
  ret -= 40;
 }
 else
 {
  ret -= 20;
 }


 ret -= 8;

 if (a->PlainTextMode == 0)
 {

  ret -= UDP_ACCELERATION_PACKET_IV_SIZE;
 }


 ret -= sizeof(UINT);


 ret -= sizeof(UINT64);


 ret -= sizeof(UINT64);


 ret -= sizeof(USHORT);


 ret -= sizeof(UCHAR);

 if (a->PlainTextMode == 0)
 {

  ret -= UDP_ACCELERATION_PACKET_IV_SIZE;
 }


 ret -= 14;


 ret -= 20;


 ret -= 20;

 return ret;
}
