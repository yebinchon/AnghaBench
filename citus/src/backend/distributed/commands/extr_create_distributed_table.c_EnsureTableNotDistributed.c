
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int ERRCODE_INVALID_TABLE_DEFINITION ;
 int ERROR ;
 int IsDistributedTable (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char*) ;
 char* get_rel_name (int ) ;

__attribute__((used)) static void
EnsureTableNotDistributed(Oid relationId)
{
 char *relationName = get_rel_name(relationId);
 bool isDistributedTable = 0;

 isDistributedTable = IsDistributedTable(relationId);

 if (isDistributedTable)
 {
  ereport(ERROR, (errcode(ERRCODE_INVALID_TABLE_DEFINITION),
      errmsg("table \"%s\" is already distributed",
          relationName)));
 }
}
