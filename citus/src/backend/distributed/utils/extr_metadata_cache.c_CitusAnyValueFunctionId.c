
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ anyValueFunctionId; } ;
typedef scalar_t__ Oid ;


 scalar_t__ FunctionOid (char*,char*,int const) ;
 scalar_t__ InvalidOid ;
 TYPE_1__ MetadataCache ;

Oid
CitusAnyValueFunctionId(void)
{
 if (MetadataCache.anyValueFunctionId == InvalidOid)
 {
  const int argCount = 1;
  MetadataCache.anyValueFunctionId =
   FunctionOid("pg_catalog", "any_value", argCount);
 }

 return MetadataCache.anyValueFunctionId;
}
