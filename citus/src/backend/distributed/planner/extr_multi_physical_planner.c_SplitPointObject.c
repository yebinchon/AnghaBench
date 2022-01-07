
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32 ;
typedef int int16 ;
struct TYPE_3__ {int valueTypeId; int minValueExists; int minValue; } ;
typedef TYPE_1__ ShardInterval ;
typedef int Oid ;
typedef int Datum ;
typedef int ArrayType ;


 int Assert (int ) ;
 int InvalidOid ;
 int * construct_array (int *,int,int ,int ,int,char) ;
 int get_typlenbyvalalign (int ,int *,int*,char*) ;
 int * palloc0 (int) ;

__attribute__((used)) static ArrayType *
SplitPointObject(ShardInterval **shardIntervalArray, uint32 shardIntervalCount)
{
 ArrayType *splitPointObject = ((void*)0);
 uint32 intervalIndex = 0;
 Oid typeId = InvalidOid;
 bool typeByValue = 0;
 char typeAlignment = 0;
 int16 typeLength = 0;


 uint32 minDatumCount = shardIntervalCount;
 Datum *minDatumArray = palloc0(minDatumCount * sizeof(Datum));

 for (intervalIndex = 0; intervalIndex < shardIntervalCount; intervalIndex++)
 {
  ShardInterval *shardInterval = shardIntervalArray[intervalIndex];
  minDatumArray[intervalIndex] = shardInterval->minValue;
  Assert(shardInterval->minValueExists);


  if (intervalIndex == 0)
  {
   typeId = shardInterval->valueTypeId;
  }
 }


 get_typlenbyvalalign(typeId, &typeLength, &typeByValue, &typeAlignment);
 splitPointObject = construct_array(minDatumArray, minDatumCount, typeId,
            typeLength, typeByValue, typeAlignment);

 return splitPointObject;
}
