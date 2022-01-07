
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int loaded; int numareas; } ;
struct TYPE_3__ {int nodes; } ;


 int AAS_AllocMaxAAS () ;
 int AAS_StoreBoundingBoxes () ;
 int AAS_StoreTree_r (int ) ;
 int Log_Write (char*,...) ;
 TYPE_2__ aasworld ;
 int qprintf (char*,...) ;
 TYPE_1__ tmpaasworld ;

void AAS_StoreFile(char *filename)
{
 AAS_AllocMaxAAS();

 Log_Write("AAS_StoreFile\r\n");

 AAS_StoreBoundingBoxes();

 qprintf("%6d areas stored", 0);

 AAS_StoreTree_r(tmpaasworld.nodes);
 qprintf("\n");
 Log_Write("%6d areas stored\r\n", aasworld.numareas);
 aasworld.loaded = 1;
}
