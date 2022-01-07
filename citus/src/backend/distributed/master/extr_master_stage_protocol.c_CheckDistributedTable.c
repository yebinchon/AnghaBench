
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int ERROR ;
 int EnsureRelationKindSupported (int ) ;
 int IsDistributedTable (int ) ;
 int ereport (int ,int ) ;
 int errmsg (char*,char*) ;
 char* get_rel_name (int ) ;

void
CheckDistributedTable(Oid relationId)
{
 char *relationName = get_rel_name(relationId);


 EnsureRelationKindSupported(relationId);

 if (!IsDistributedTable(relationId))
 {
  ereport(ERROR, (errmsg("relation \"%s\" is not a distributed table",
          relationName)));
 }
}
