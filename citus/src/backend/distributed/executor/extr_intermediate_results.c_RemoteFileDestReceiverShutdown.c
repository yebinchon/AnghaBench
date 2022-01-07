
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int fd; } ;
struct TYPE_6__ {int fe_msgbuf; scalar_t__ binary; } ;
struct TYPE_5__ {TYPE_3__ fileCompat; scalar_t__ writeLocalFile; TYPE_2__* copyOutState; int * connectionList; } ;
typedef TYPE_1__ RemoteFileDestReceiver ;
typedef int List ;
typedef int DestReceiver ;
typedef TYPE_2__* CopyOutState ;


 int AppendCopyBinaryFooters (TYPE_2__*) ;
 int BroadcastCopyData (int ,int *) ;
 int EndRemoteCopy (int ,int *) ;
 int FileClose (int ) ;
 int WriteToLocalFile (int ,TYPE_3__*) ;
 int resetStringInfo (int ) ;

__attribute__((used)) static void
RemoteFileDestReceiverShutdown(DestReceiver *destReceiver)
{
 RemoteFileDestReceiver *resultDest = (RemoteFileDestReceiver *) destReceiver;

 List *connectionList = resultDest->connectionList;
 CopyOutState copyOutState = resultDest->copyOutState;

 if (copyOutState->binary)
 {

  resetStringInfo(copyOutState->fe_msgbuf);
  AppendCopyBinaryFooters(copyOutState);
  BroadcastCopyData(copyOutState->fe_msgbuf, connectionList);

  if (resultDest->writeLocalFile)
  {
   WriteToLocalFile(copyOutState->fe_msgbuf, &resultDest->fileCompat);
  }
 }


 EndRemoteCopy(0, connectionList);

 if (resultDest->writeLocalFile)
 {
  FileClose(resultDest->fileCompat.fd);
 }
}
