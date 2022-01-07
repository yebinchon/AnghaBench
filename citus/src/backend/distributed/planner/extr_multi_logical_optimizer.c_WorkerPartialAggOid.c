
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int ANYELEMENTOID ;
 int CitusFunctionOidWithSignature (int ,int,int *) ;
 int OIDOID ;
 int WORKER_PARTIAL_AGGREGATE_NAME ;

__attribute__((used)) static Oid
WorkerPartialAggOid()
{
 Oid argtypes[] = {
  OIDOID,
  ANYELEMENTOID,
 };

 return CitusFunctionOidWithSignature(WORKER_PARTIAL_AGGREGATE_NAME, 2, argtypes);
}
