
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ slotUsed; } ;


 int maxFDSaw ;
 TYPE_1__* stateTable ;

int getConnectedSockets()
{
    int q = 0, i = 0;
    for(q = 0; q < maxFDSaw; q++) if(stateTable[q].slotUsed) i++;

    return i;
}
