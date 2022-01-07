
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SERVER ;


 int * SiNewServerEx (int,int,int) ;

SERVER *SiNewServer(bool bridge)
{
 return SiNewServerEx(bridge, 0, 0);
}
