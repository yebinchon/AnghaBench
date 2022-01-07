
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64 ;
struct TYPE_4__ {int fe_msgbuf; } ;
typedef int List ;
typedef TYPE_1__* CopyOutState ;


 int AppendCopyBinaryHeaders (TYPE_1__*) ;
 int SendCopyDataToAll (int ,int ,int *) ;
 int resetStringInfo (int ) ;

__attribute__((used)) static void
SendCopyBinaryHeaders(CopyOutState copyOutState, int64 shardId, List *connectionList)
{
 resetStringInfo(copyOutState->fe_msgbuf);
 AppendCopyBinaryHeaders(copyOutState);
 SendCopyDataToAll(copyOutState->fe_msgbuf, shardId, connectionList);
}
