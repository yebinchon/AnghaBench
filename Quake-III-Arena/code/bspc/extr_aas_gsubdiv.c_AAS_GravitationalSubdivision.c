
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nodes; } ;


 int AAS_GravitationalSubdivision_r (int ) ;
 int Log_Write (char*,...) ;
 scalar_t__ numgravitationalsubdivisions ;
 int qprintf (char*,...) ;
 TYPE_1__ tmpaasworld ;

void AAS_GravitationalSubdivision(void)
{
 Log_Write("AAS_GravitationalSubdivision\r\n");
 numgravitationalsubdivisions = 0;
 qprintf("%6i gravitational subdivisions", numgravitationalsubdivisions);

 AAS_GravitationalSubdivision_r(tmpaasworld.nodes);
 qprintf("\n");
 Log_Write("%6i gravitational subdivisions\r\n", numgravitationalsubdivisions);
}
