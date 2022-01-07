
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ citusTableIsVisibleFuncId; } ;
typedef scalar_t__ Oid ;


 scalar_t__ FunctionOid (char*,char*,int const) ;
 scalar_t__ InvalidOid ;
 TYPE_1__ MetadataCache ;

Oid
CitusTableVisibleFuncId(void)
{
 if (MetadataCache.citusTableIsVisibleFuncId == InvalidOid)
 {
  const int argCount = 1;

  MetadataCache.citusTableIsVisibleFuncId =
   FunctionOid("pg_catalog", "citus_table_is_visible", argCount);
 }

 return MetadataCache.citusTableIsVisibleFuncId;
}
