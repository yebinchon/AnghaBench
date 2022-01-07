
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SiRebootServerEx (int,int) ;

void SiRebootServer(bool bridge)
{
 SiRebootServerEx(bridge, 0);
}
