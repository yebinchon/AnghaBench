
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ clock_t ;


 float CLOCKS_PER_SEC ;

float sec(clock_t clocks)
{
    return (float)clocks/CLOCKS_PER_SEC;
}
