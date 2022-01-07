
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int ANYELEMENTOID ;
 int COORD_COMBINE_AGGREGATE_NAME ;
 int CSTRINGOID ;
 int CitusFunctionOidWithSignature (int ,int,int *) ;
 int OIDOID ;

__attribute__((used)) static Oid
CoordCombineAggOid()
{
 Oid argtypes[] = {
  OIDOID,
  CSTRINGOID,
  ANYELEMENTOID,
 };

 return CitusFunctionOidWithSignature(COORD_COMBINE_AGGREGATE_NAME, 3, argtypes);
}
