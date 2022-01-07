
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int ERRCODE_WRONG_OBJECT_TYPE ;
 int ERROR ;
 scalar_t__ IsChildTable (int ) ;
 scalar_t__ IsParentTable (int ) ;
 char RELKIND_FOREIGN_TABLE ;
 scalar_t__ RegularTable (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char*) ;
 char* get_rel_name (int ) ;
 char get_rel_relkind (int ) ;

void
EnsureRelationKindSupported(Oid relationId)
{
 char relationKind = get_rel_relkind(relationId);
 bool supportedRelationKind = 0;

 supportedRelationKind = RegularTable(relationId) ||
       relationKind == RELKIND_FOREIGN_TABLE;





 supportedRelationKind = supportedRelationKind && !(IsChildTable(relationId) ||
                IsParentTable(relationId));

 if (!supportedRelationKind)
 {
  char *relationName = get_rel_name(relationId);

  ereport(ERROR, (errcode(ERRCODE_WRONG_OBJECT_TYPE),
      errmsg("%s is not a regular, foreign or partitioned table",
          relationName)));
 }
}
