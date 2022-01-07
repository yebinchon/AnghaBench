
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int Anum_pg_type_oid ;
 int GetSysCacheOid2Compat (int ,int ,int ,int ) ;
 int ObjectIdGetDatum (int ) ;
 int PointerGetDatum (char const*) ;
 int TYPENAMENSP ;

__attribute__((used)) static Oid
TypeOid(Oid schemaId, const char *typeName)
{
 Oid typeOid;

 typeOid = GetSysCacheOid2Compat(TYPENAMENSP, Anum_pg_type_oid,
         PointerGetDatum(typeName),
         ObjectIdGetDatum(schemaId));

 return typeOid;
}
