
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;


 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*) ;
 scalar_t__ relation_has_policies (int ) ;

void
ErrorIfUnsupportedPolicy(Relation relation)
{
 if (relation_has_policies(relation))
 {
  ereport(ERROR, (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("policies on distributed tables are only supported in "
          "Citus Enterprise"),
      errhint("Remove any policies on a table before distributing")));
 }
}
