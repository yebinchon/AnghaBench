
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16 ;
typedef int Oid ;
typedef int Datum ;
typedef int ArrayType ;


 int ARR_ELEMTYPE (int *) ;
 int ARR_HASNULL (int *) ;
 int ERRCODE_NULL_VALUE_NOT_ALLOWED ;
 int ERROR ;
 int InvalidOid ;
 int deconstruct_array (int *,int ,int ,int,char,int **,int**,int*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int get_typlenbyvalalign (int ,int *,int*,char*) ;

Datum *
DeconstructArrayObject(ArrayType *arrayObject)
{
 Datum *datumArray = ((void*)0);
 bool *datumArrayNulls = ((void*)0);
 int datumArrayLength = 0;

 Oid typeId = InvalidOid;
 bool typeByVal = 0;
 char typeAlign = 0;
 int16 typeLength = 0;

 bool arrayHasNull = ARR_HASNULL(arrayObject);
 if (arrayHasNull)
 {
  ereport(ERROR, (errcode(ERRCODE_NULL_VALUE_NOT_ALLOWED),
      errmsg("worker array object cannot contain null values")));
 }

 typeId = ARR_ELEMTYPE(arrayObject);
 get_typlenbyvalalign(typeId, &typeLength, &typeByVal, &typeAlign);

 deconstruct_array(arrayObject, typeId, typeLength, typeByVal, typeAlign,
       &datumArray, &datumArrayNulls, &datumArrayLength);

 return datumArray;
}
