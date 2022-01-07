
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int ArrayType ;


 int* ARR_DIMS (int *) ;
 int ARR_NDIM (int *) ;
 int ArrayGetNItems (int,int*) ;
 int Assert (int) ;
 int ERRCODE_ARRAY_SUBSCRIPT_ERROR ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;

int32
ArrayObjectCount(ArrayType *arrayObject)
{
 int32 dimensionCount = ARR_NDIM(arrayObject);
 int32 *dimensionLengthArray = ARR_DIMS(arrayObject);
 int32 arrayLength = 0;

 if (dimensionCount == 0)
 {
  return 0;
 }


 Assert(dimensionCount == 1);

 arrayLength = ArrayGetNItems(dimensionCount, dimensionLengthArray);
 if (arrayLength <= 0)
 {
  ereport(ERROR, (errcode(ERRCODE_ARRAY_SUBSCRIPT_ERROR),
      errmsg("worker array object cannot be empty")));
 }

 return arrayLength;
}
