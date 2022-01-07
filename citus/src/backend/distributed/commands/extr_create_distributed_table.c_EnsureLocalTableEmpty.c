
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int ERRCODE_INVALID_TABLE_DEFINITION ;
 int ERROR ;
 int LocalTableEmpty (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*,char*) ;
 int errhint (char*) ;
 int errmsg (char*,char*) ;
 char* get_rel_name (int ) ;

__attribute__((used)) static void
EnsureLocalTableEmpty(Oid relationId)
{
 char *relationName = get_rel_name(relationId);
 bool localTableEmpty = LocalTableEmpty(relationId);

 if (!localTableEmpty)
 {
  ereport(ERROR, (errcode(ERRCODE_INVALID_TABLE_DEFINITION),
      errmsg("cannot distribute relation \"%s\"", relationName),
      errdetail("Relation \"%s\" contains data.", relationName),
      errhint("Empty your table before distributing it.")));
 }
}
