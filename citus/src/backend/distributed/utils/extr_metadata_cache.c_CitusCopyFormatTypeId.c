
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ copyFormatTypeId; } ;
typedef scalar_t__ Oid ;


 int Anum_pg_enum_oid ;
 scalar_t__ GetSysCacheOid2Compat (int ,int ,int ,int ) ;
 scalar_t__ InvalidOid ;
 TYPE_1__ MetadataCache ;
 int PG_CATALOG_NAMESPACE ;
 int PointerGetDatum (char*) ;
 int TYPENAMENSP ;

Oid
CitusCopyFormatTypeId(void)
{
 if (MetadataCache.copyFormatTypeId == InvalidOid)
 {
  char *typeName = "citus_copy_format";
  MetadataCache.copyFormatTypeId = GetSysCacheOid2Compat(TYPENAMENSP,
                  Anum_pg_enum_oid,
                  PointerGetDatum(typeName),
                  PG_CATALOG_NAMESPACE);
 }

 return MetadataCache.copyFormatTypeId;
}
