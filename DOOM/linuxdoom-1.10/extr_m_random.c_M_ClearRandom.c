
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ prndindex ;
 scalar_t__ rndindex ;

void M_ClearRandom (void)
{
    rndindex = prndindex = 0;
}
