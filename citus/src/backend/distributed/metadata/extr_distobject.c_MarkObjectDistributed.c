
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
MarkObjectDistributed(const ObjectAddress *distAddress)
{
 int paramCount = 3;
 Oid paramTypes[3] = {
  OIDOID,
  OIDOID,
  INT4OID
 };
 Datum paramValues[3] = {
  ObjectIdGetDatum(distAddress->classId),
  ObjectIdGetDatum(distAddress->objectId),
  Int32GetDatum(distAddress->objectSubId)
 };
 int spiStatus = 0;

 char *insertQuery = "INSERT INTO citus.pg_dist_object (classid, objid, objsubid) "
      "VALUES ($1, $2, $3) ON CONFLICT DO NOTHING";

 spiStatus = ExecuteCommandAsSuperuser(insertQuery, paramCount, paramTypes,
            paramValues);
 if (spiStatus < 0)
 {
  ereport(ERROR, (errmsg("failed to insert object into citus.pg_dist_object")));
 }
}
