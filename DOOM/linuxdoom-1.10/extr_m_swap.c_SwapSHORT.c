
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
unsigned short SwapSHORT(unsigned short x)
{

    return (x>>8) | (x<<8);
}
