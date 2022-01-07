
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int text ;
typedef int int64 ;
typedef int Datum ;


 int DatumGetInt64 (int ) ;
 int DirectFunctionCall1 (int ,int ) ;
 int PointerGetDatum (int *) ;
 int * cstring_to_text (char*) ;
 int master_create_empty_shard ;

__attribute__((used)) static int64
CreateEmptyShard(char *relationName)
{
 int64 shardId = 0;

 text *relationNameText = cstring_to_text(relationName);
 Datum relationNameDatum = PointerGetDatum(relationNameText);
 Datum shardIdDatum = DirectFunctionCall1(master_create_empty_shard,
            relationNameDatum);
 shardId = DatumGetInt64(shardIdDatum);

 return shardId;
}
