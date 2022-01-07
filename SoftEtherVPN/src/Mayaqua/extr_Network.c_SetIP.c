
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef void* UCHAR ;
struct TYPE_4__ {void** addr; } ;
typedef TYPE_1__ IP ;


 int Zero (TYPE_1__*,int) ;

void SetIP(IP *ip, UCHAR a1, UCHAR a2, UCHAR a3, UCHAR a4)
{

 if (ip == ((void*)0))
 {
  return;
 }

 Zero(ip, sizeof(IP));
 ip->addr[0] = a1;
 ip->addr[1] = a2;
 ip->addr[2] = a3;
 ip->addr[3] = a4;
}
