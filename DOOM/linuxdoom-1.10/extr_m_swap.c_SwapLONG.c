
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
unsigned long SwapLONG( unsigned long x)
{
    return
 (x>>24)
 | ((x>>8) & 0xff00)
 | ((x<<8) & 0xff0000)
 | (x<<24);
}
