
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fd; int updatedAt; scalar_t__ slotUsed; } ;


 TYPE_1__* stateTable ;
 int time (int *) ;

void updateAccessTime(int fd)
{
    if(stateTable[fd].slotUsed && stateTable[fd].fd == fd)
    {
        stateTable[fd].updatedAt = time(((void*)0));
    }
}
