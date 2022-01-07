
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int int16 ;
typedef int * StringInfo ;
typedef int Oid ;
typedef int FmgrInfo ;
typedef int Datum ;
typedef int ArrayType ;


 int ARRAY_OUT_FUNC_ID ;
 char* DatumGetCString (int ) ;
 int FunctionCall1 (int *,int ) ;
 int PointerGetDatum (int *) ;
 int appendStringInfo (int *,char*,char*) ;
 int * construct_array (int *,int ,int ,int ,int,char) ;
 int fmgr_info (int ,int *) ;
 int get_typlenbyvalalign (int ,int *,int*,char*) ;
 int * makeStringInfo () ;
 scalar_t__ palloc0 (int) ;

__attribute__((used)) static StringInfo
DatumArrayString(Datum *datumArray, uint32 datumCount, Oid datumTypeId)
{
 StringInfo arrayStringInfo = ((void*)0);
 FmgrInfo *arrayOutFunction = ((void*)0);
 ArrayType *arrayObject = ((void*)0);
 Datum arrayObjectDatum = 0;
 Datum arrayStringDatum = 0;
 char *arrayString = ((void*)0);
 int16 typeLength = 0;
 bool typeByValue = 0;
 char typeAlignment = 0;


 get_typlenbyvalalign(datumTypeId, &typeLength, &typeByValue, &typeAlignment);
 arrayObject = construct_array(datumArray, datumCount, datumTypeId,
          typeLength, typeByValue, typeAlignment);
 arrayObjectDatum = PointerGetDatum(arrayObject);


 arrayOutFunction = (FmgrInfo *) palloc0(sizeof(FmgrInfo));
 fmgr_info(ARRAY_OUT_FUNC_ID, arrayOutFunction);

 arrayStringDatum = FunctionCall1(arrayOutFunction, arrayObjectDatum);
 arrayString = DatumGetCString(arrayStringDatum);

 arrayStringInfo = makeStringInfo();
 appendStringInfo(arrayStringInfo, "%s", arrayString);

 return arrayStringInfo;
}
