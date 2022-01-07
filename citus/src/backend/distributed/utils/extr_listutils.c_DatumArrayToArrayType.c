
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16 ;
typedef int Oid ;
typedef int Datum ;
typedef int ArrayType ;


 int * construct_array (int *,int,int ,int ,int,char) ;
 int get_typlenbyvalalign (int ,int *,int*,char*) ;

ArrayType *
DatumArrayToArrayType(Datum *datumArray, int datumCount, Oid datumTypeId)
{
 ArrayType *arrayObject = ((void*)0);
 int16 typeLength = 0;
 bool typeByValue = 0;
 char typeAlignment = 0;

 get_typlenbyvalalign(datumTypeId, &typeLength, &typeByValue, &typeAlignment);
 arrayObject = construct_array(datumArray, datumCount, datumTypeId,
          typeLength, typeByValue, typeAlignment);

 return arrayObject;
}
