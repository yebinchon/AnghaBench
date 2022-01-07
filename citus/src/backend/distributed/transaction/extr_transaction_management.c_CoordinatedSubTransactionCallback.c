
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SubXactEvent ;
typedef int SubTransactionId ;


 int CoordinatedRemoteTransactionsSavepointBegin (int ) ;
 int CoordinatedRemoteTransactionsSavepointRelease (int ) ;
 int CoordinatedRemoteTransactionsSavepointRollback (int ) ;
 int InCoordinatedTransaction () ;
 int PopSubXact (int ) ;
 int PushSubXact (int ) ;




 int UnsetCitusNoticeLevel () ;

__attribute__((used)) static void
CoordinatedSubTransactionCallback(SubXactEvent event, SubTransactionId subId,
          SubTransactionId parentSubid, void *arg)
{
 switch (event)
 {
  case 128:
  {
   PushSubXact(subId);
   if (InCoordinatedTransaction())
   {
    CoordinatedRemoteTransactionsSavepointBegin(subId);
   }
   break;
  }

  case 130:
  {
   if (InCoordinatedTransaction())
   {
    CoordinatedRemoteTransactionsSavepointRelease(subId);
   }
   PopSubXact(subId);
   break;
  }

  case 131:
  {
   if (InCoordinatedTransaction())
   {
    CoordinatedRemoteTransactionsSavepointRollback(subId);
   }
   PopSubXact(subId);

   UnsetCitusNoticeLevel();
   break;
  }

  case 129:
  {

   break;
  }
 }
}
