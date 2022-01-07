
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int relation; scalar_t__ is_program; int * filename; } ;
typedef int Oid ;
typedef TYPE_1__ CopyStmt ;


 int BeginOrContinueCoordinatedTransaction () ;
 int CopyFromWorkerNode (TYPE_1__*,char*) ;
 int CopyToExistingShards (TYPE_1__*,char*) ;
 int CopyToNewShards (TYPE_1__*,char*,int ) ;
 char DISTRIBUTE_BY_APPEND ;
 char DISTRIBUTE_BY_HASH ;
 char DISTRIBUTE_BY_NONE ;
 char DISTRIBUTE_BY_RANGE ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERRCODE_INSUFFICIENT_PRIVILEGE ;
 int ERROR ;
 int EnsurePartitionTableNotReplicated (int ) ;
 int IsCopyFromWorker (TYPE_1__*) ;
 int NoLock ;
 char PartitionMethod (int ) ;
 int RangeVarGetRelid (int ,int ,int) ;
 int XACT_MODIFICATION_DATA ;
 int XactModificationLevel ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*) ;
 int * masterConnection ;
 int superuser () ;

__attribute__((used)) static void
CitusCopyFrom(CopyStmt *copyStatement, char *completionTag)
{
 bool isCopyFromWorker = 0;

 BeginOrContinueCoordinatedTransaction();


 if (copyStatement->filename != ((void*)0) && !superuser())
 {
  if (copyStatement->is_program)
  {
   ereport(ERROR,
     (errcode(ERRCODE_INSUFFICIENT_PRIVILEGE),
      errmsg("must be superuser to COPY to or from an external program"),
      errhint("Anyone can COPY to stdout or from stdin. "
        "psql's \\copy command also works for anyone.")));
  }
  else
  {
   ereport(ERROR,
     (errcode(ERRCODE_INSUFFICIENT_PRIVILEGE),
      errmsg("must be superuser to COPY to or from a file"),
      errhint("Anyone can COPY to stdout or from stdin. "
        "psql's \\copy command also works for anyone.")));
  }
 }

 masterConnection = ((void*)0);
 isCopyFromWorker = IsCopyFromWorker(copyStatement);
 if (isCopyFromWorker)
 {
  CopyFromWorkerNode(copyStatement, completionTag);
 }
 else
 {
  Oid relationId = RangeVarGetRelid(copyStatement->relation, NoLock, 0);
  char partitionMethod = PartitionMethod(relationId);


  EnsurePartitionTableNotReplicated(relationId);

  if (partitionMethod == DISTRIBUTE_BY_HASH || partitionMethod ==
   DISTRIBUTE_BY_RANGE || partitionMethod == DISTRIBUTE_BY_NONE)
  {
   CopyToExistingShards(copyStatement, completionTag);
  }
  else if (partitionMethod == DISTRIBUTE_BY_APPEND)
  {
   CopyToNewShards(copyStatement, completionTag, relationId);
  }
  else
  {
   ereport(ERROR, (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
       errmsg("unsupported partition method")));
  }
 }

 XactModificationLevel = XACT_MODIFICATION_DATA;
}
