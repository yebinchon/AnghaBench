
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint64 ;
struct TYPE_14__ {int binary; } ;
struct TYPE_13__ {TYPE_1__* shardState; TYPE_2__* connectionState; } ;
struct TYPE_12__ {int data; } ;
struct TYPE_11__ {int * connection; } ;
struct TYPE_10__ {int shardId; } ;
typedef TYPE_3__* StringInfo ;
typedef int PGresult ;
typedef int MultiConnection ;
typedef int CopyStmt ;
typedef TYPE_4__ CopyPlacementState ;
typedef TYPE_5__* CopyOutState ;


 TYPE_3__* ConstructCopyStatement (int *,int ,int) ;
 int ERROR ;
 int * GetRemoteCommandResult (int *,int) ;
 scalar_t__ PGRES_COPY_IN ;
 int PQclear (int *) ;
 scalar_t__ PQresultStatus (int *) ;
 int ReportConnectionError (int *,int ) ;
 int ReportResultError (int *,int *,int ) ;
 int SendCopyBinaryHeaders (TYPE_5__*,int ,int ) ;
 int SendRemoteCommand (int *,int ) ;
 int list_make1 (int *) ;

__attribute__((used)) static void
StartPlacementStateCopyCommand(CopyPlacementState *placementState,
          CopyStmt *copyStatement, CopyOutState copyOutState)
{
 StringInfo copyCommand = ((void*)0);
 PGresult *result = ((void*)0);
 MultiConnection *connection = placementState->connectionState->connection;
 uint64 shardId = placementState->shardState->shardId;
 bool raiseInterrupts = 1;
 bool binaryCopy = copyOutState->binary;

 copyCommand = ConstructCopyStatement(copyStatement, shardId, binaryCopy);

 if (!SendRemoteCommand(connection, copyCommand->data))
 {
  ReportConnectionError(connection, ERROR);
 }

 result = GetRemoteCommandResult(connection, raiseInterrupts);
 if (PQresultStatus(result) != PGRES_COPY_IN)
 {
  ReportResultError(connection, result, ERROR);
 }

 PQclear(result);

 if (binaryCopy)
 {
  SendCopyBinaryHeaders(copyOutState, shardId, list_make1(connection));
 }
}
