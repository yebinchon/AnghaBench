
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int TupleDesc ;
struct TYPE_8__ {TYPE_1__* ps_ResultTupleSlot; } ;
struct TYPE_9__ {TYPE_2__ ps; } ;
struct TYPE_10__ {TYPE_3__ ss; } ;
struct TYPE_11__ {TYPE_4__ customScanState; } ;
struct TYPE_7__ {int tts_tupleDescriptor; } ;
typedef TYPE_5__ CitusScanState ;



TupleDesc
ScanStateGetTupleDescriptor(CitusScanState *scanState)
{
 return scanState->customScanState.ss.ps.ps_ResultTupleSlot->tts_tupleDescriptor;
}
