
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int claimedExclusively; } ;
typedef TYPE_1__ MultiConnection ;



void
UnclaimConnection(MultiConnection *connection)
{
 connection->claimedExclusively = 0;
}
