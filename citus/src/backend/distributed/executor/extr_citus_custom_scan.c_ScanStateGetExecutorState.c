
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * state; } ;
struct TYPE_7__ {TYPE_1__ ps; } ;
struct TYPE_8__ {TYPE_2__ ss; } ;
struct TYPE_9__ {TYPE_3__ customScanState; } ;
typedef int EState ;
typedef TYPE_4__ CitusScanState ;



EState *
ScanStateGetExecutorState(CitusScanState *scanState)
{
 return scanState->customScanState.ss.ps.state;
}
