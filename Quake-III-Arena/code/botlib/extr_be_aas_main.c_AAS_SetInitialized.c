
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int initialized; } ;
struct TYPE_3__ {int (* Print ) (int ,char*) ;} ;


 int PRT_MESSAGE ;
 TYPE_2__ aasworld ;
 TYPE_1__ botimport ;
 int qtrue ;
 int stub1 (int ,char*) ;

void AAS_SetInitialized(void)
{
 aasworld.initialized = qtrue;
 botimport.Print(PRT_MESSAGE, "AAS initialized.\n");






}
