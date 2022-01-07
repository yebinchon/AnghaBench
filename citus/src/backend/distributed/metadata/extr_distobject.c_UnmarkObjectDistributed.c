
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int objectSubId; int objectId; int classId; } ;
typedef int Oid ;
typedef TYPE_1__ ObjectAddress ;
typedef int Datum ;


 int ERROR ;
 int ExecuteCommandAsSuperuser (char*,int,int *,int *) ;
 int INT4OID ;
 int Int32GetDatum (int ) ;
 int OIDOID ;
 int ObjectIdGetDatum (int ) ;
 int ereport (int ,int ) ;
 int errmsg (char*) ;

void
UnmarkObjectDistributed(const ObjectAddress *address)
{
 int paramCount = 3;
 Oid paramTypes[3] = {
  OIDOID,
  OIDOID,
  INT4OID
 };
 Datum paramValues[3] = {
  ObjectIdGetDatum(address->classId),
  ObjectIdGetDatum(address->objectId),
  Int32GetDatum(address->objectSubId)
 };
 int spiStatus = 0;

 char *deleteQuery = "DELETE FROM citus.pg_dist_object WHERE classid = $1 AND "
      "objid = $2 AND objsubid = $3";

 spiStatus = ExecuteCommandAsSuperuser(deleteQuery, paramCount, paramTypes,
            paramValues);
 if (spiStatus < 0)
 {
  ereport(ERROR, (errmsg("failed to delete object from citus.pg_dist_object")));
 }
}
