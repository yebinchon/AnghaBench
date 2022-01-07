
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int options; } ;
typedef int Oid ;
typedef TYPE_1__ CreateSeqStmt ;


 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 int InvalidOid ;
 scalar_t__ IsDistributedTable (int ) ;
 scalar_t__ OptionsSpecifyOwnedBy (int ,int *) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*) ;

void
ErrorIfUnsupportedSeqStmt(CreateSeqStmt *createSeqStmt)
{
 Oid ownedByTableId = InvalidOid;


 if (OptionsSpecifyOwnedBy(createSeqStmt->options, &ownedByTableId))
 {
  if (IsDistributedTable(ownedByTableId))
  {
   ereport(ERROR, (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
       errmsg("cannot create sequences that specify a distributed "
           "table in their OWNED BY option"),
       errhint("Use a sequence in a distributed table by specifying "
         "a serial column type before creating any shards.")));
  }
 }
}
