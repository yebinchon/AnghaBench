
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ extraDataContainerFuncId; } ;
typedef scalar_t__ Oid ;
typedef int List ;


 scalar_t__ INTERNALOID ;
 scalar_t__ InvalidOid ;
 scalar_t__ LookupFuncName (int *,int,scalar_t__*,int) ;
 TYPE_1__ MetadataCache ;
 int * NIL ;
 int * list_make2 (int ,int ) ;
 int makeString (char*) ;

Oid
CitusExtraDataContainerFuncId(void)
{
 List *nameList = NIL;
 Oid paramOids[1] = { INTERNALOID };

 if (MetadataCache.extraDataContainerFuncId == InvalidOid)
 {
  nameList = list_make2(makeString("pg_catalog"),
         makeString("citus_extradata_container"));
  MetadataCache.extraDataContainerFuncId =
   LookupFuncName(nameList, 1, paramOids, 0);
 }

 return MetadataCache.extraDataContainerFuncId;
}
