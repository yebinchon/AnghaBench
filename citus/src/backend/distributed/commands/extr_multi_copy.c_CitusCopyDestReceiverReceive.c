
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_3__ {int connectionStateHash; } ;
typedef int List ;
typedef int DestReceiver ;
typedef TYPE_1__ CitusCopyDestReceiver ;


 int CitusSendTupleToPlacements (int *,TYPE_1__*) ;
 int * ConnectionStateList (int ) ;
 int PG_CATCH () ;
 int PG_END_TRY () ;
 int PG_RE_THROW () ;
 int PG_TRY () ;
 int UnclaimCopyConnections (int *) ;

__attribute__((used)) static bool
CitusCopyDestReceiverReceive(TupleTableSlot *slot, DestReceiver *dest)
{
 bool result = 0;
 CitusCopyDestReceiver *copyDest = (CitusCopyDestReceiver *) dest;

 PG_TRY();
 {
  result = CitusSendTupleToPlacements(slot, copyDest);
 }
 PG_CATCH();
 {




  List *connectionStateList = ConnectionStateList(copyDest->connectionStateHash);
  UnclaimCopyConnections(connectionStateList);

  PG_RE_THROW();
 }
 PG_END_TRY();

 return result;
}
