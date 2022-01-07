
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int fd; } ;
struct TYPE_7__ {TYPE_1__ fileCompat; TYPE_3__* copyOutState; } ;
typedef TYPE_2__ TaskFileDestReceiver ;
struct TYPE_8__ {int fe_msgbuf; scalar_t__ binary; } ;
typedef int DestReceiver ;
typedef TYPE_3__* CopyOutState ;


 int AppendCopyBinaryFooters (TYPE_3__*) ;
 int FileClose (int ) ;
 int WriteToLocalFile (int ,TYPE_2__*) ;
 int resetStringInfo (int ) ;

__attribute__((used)) static void
TaskFileDestReceiverShutdown(DestReceiver *destReceiver)
{
 TaskFileDestReceiver *taskFileDest = (TaskFileDestReceiver *) destReceiver;
 CopyOutState copyOutState = taskFileDest->copyOutState;

 if (copyOutState->binary)
 {

  resetStringInfo(copyOutState->fe_msgbuf);
  AppendCopyBinaryFooters(copyOutState);
  WriteToLocalFile(copyOutState->fe_msgbuf, taskFileDest);
 }

 FileClose(taskFileDest->fileCompat.fd);
}
