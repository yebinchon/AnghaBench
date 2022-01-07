
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ textSendAsJsonbFunctionId; } ;
typedef scalar_t__ Oid ;
typedef int List ;


 scalar_t__ InvalidOid ;
 scalar_t__ LookupFuncName (int *,int,scalar_t__*,int) ;
 TYPE_1__ MetadataCache ;
 scalar_t__ TEXTOID ;
 int * list_make2 (int ,int ) ;
 int makeString (char*) ;

Oid
CitusTextSendAsJsonbFunctionId(void)
{
 if (MetadataCache.textSendAsJsonbFunctionId == InvalidOid)
 {
  List *nameList = list_make2(makeString("pg_catalog"),
         makeString("citus_text_send_as_jsonb"));
  Oid paramOids[1] = { TEXTOID };

  MetadataCache.textSendAsJsonbFunctionId =
   LookupFuncName(nameList, 1, paramOids, 0);
 }

 return MetadataCache.textSendAsJsonbFunctionId;
}
