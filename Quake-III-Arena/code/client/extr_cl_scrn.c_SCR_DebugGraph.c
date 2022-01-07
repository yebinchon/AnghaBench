
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {float value; int color; } ;


 int current ;
 TYPE_1__* values ;

void SCR_DebugGraph (float value, int color)
{
 values[current&1023].value = value;
 values[current&1023].color = color;
 current++;
}
