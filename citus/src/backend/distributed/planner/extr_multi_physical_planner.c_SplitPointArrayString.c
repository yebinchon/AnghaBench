
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int * StringInfo ;
typedef scalar_t__ Oid ;
typedef int FmgrInfo ;
typedef int Datum ;
typedef int ArrayType ;


 int ERROR ;
 scalar_t__ InvalidOid ;
 char* OutputFunctionCall (int *,int ) ;
 int PointerGetDatum (int *) ;
 int appendStringInfo (int *,char*,char*,char*) ;
 int ereport (int ,int ) ;
 int errmsg (char*,char*) ;
 int fmgr_info (scalar_t__,int *) ;
 char* format_type_be (scalar_t__) ;
 char* format_type_with_typemod (scalar_t__,int ) ;
 int getTypeOutputInfo (scalar_t__,scalar_t__*,int*) ;
 scalar_t__ get_array_type (scalar_t__) ;
 int * makeStringInfo () ;
 scalar_t__ palloc0 (int) ;
 char* quote_literal_cstr (char*) ;

__attribute__((used)) static StringInfo
SplitPointArrayString(ArrayType *splitPointObject, Oid columnType, int32 columnTypeMod)
{
 StringInfo splitPointArrayString = ((void*)0);
 Datum splitPointDatum = PointerGetDatum(splitPointObject);
 Oid outputFunctionId = InvalidOid;
 bool typeVariableLength = 0;
 FmgrInfo *arrayOutFunction = ((void*)0);
 char *arrayOutputText = ((void*)0);
 char *arrayOutputEscapedText = ((void*)0);
 char *arrayOutTypeName = ((void*)0);

 Oid arrayOutType = get_array_type(columnType);
 if (arrayOutType == InvalidOid)
 {
  char *columnTypeName = format_type_be(columnType);
  ereport(ERROR, (errmsg("cannot range repartition table on column type %s",
          columnTypeName)));
 }

 arrayOutFunction = (FmgrInfo *) palloc0(sizeof(FmgrInfo));
 getTypeOutputInfo(arrayOutType, &outputFunctionId, &typeVariableLength);
 fmgr_info(outputFunctionId, arrayOutFunction);

 arrayOutputText = OutputFunctionCall(arrayOutFunction, splitPointDatum);
 arrayOutputEscapedText = quote_literal_cstr(arrayOutputText);


 arrayOutTypeName = format_type_with_typemod(arrayOutType, columnTypeMod);

 splitPointArrayString = makeStringInfo();
 appendStringInfo(splitPointArrayString, "%s::%s",
      arrayOutputEscapedText, arrayOutTypeName);

 return splitPointArrayString;
}
