
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nodes; } ;


 int AAS_PruneNodes_r (int ) ;
 int Log_Print (char*,int ) ;
 int Log_Write (char*) ;
 int c_numprunes ;
 TYPE_1__ tmpaasworld ;

void AAS_PruneNodes(void)
{
 Log_Write("AAS_PruneNodes\r\n");
 AAS_PruneNodes_r(tmpaasworld.nodes);
 Log_Print("%6d nodes pruned\r\n", c_numprunes);
}
