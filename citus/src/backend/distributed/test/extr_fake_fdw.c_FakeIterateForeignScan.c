
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_4__ {int * ss_ScanTupleSlot; } ;
struct TYPE_5__ {TYPE_1__ ss; } ;
typedef TYPE_2__ ForeignScanState ;


 int ExecClearTuple (int *) ;

__attribute__((used)) static TupleTableSlot *
FakeIterateForeignScan(ForeignScanState *node)
{
 TupleTableSlot *slot = node->ss.ss_ScanTupleSlot;
 ExecClearTuple(slot);

 return slot;
}
