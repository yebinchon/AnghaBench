
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ readIntermediateResultFuncId; } ;
typedef scalar_t__ Oid ;
typedef int List ;


 scalar_t__ CitusCopyFormatTypeId () ;
 scalar_t__ InvalidOid ;
 scalar_t__ LookupFuncName (int *,int,scalar_t__*,int) ;
 TYPE_1__ MetadataCache ;
 scalar_t__ TEXTOID ;
 int * list_make2 (int ,int ) ;
 int makeString (char*) ;

Oid
CitusReadIntermediateResultFuncId(void)
{
 if (MetadataCache.readIntermediateResultFuncId == InvalidOid)
 {
  List *functionNameList = list_make2(makeString("pg_catalog"),
           makeString("read_intermediate_result"));
  Oid copyFormatTypeOid = CitusCopyFormatTypeId();
  Oid paramOids[2] = { TEXTOID, copyFormatTypeOid };
  bool missingOK = 0;

  MetadataCache.readIntermediateResultFuncId =
   LookupFuncName(functionNameList, 2, paramOids, missingOK);
 }

 return MetadataCache.readIntermediateResultFuncId;
}
