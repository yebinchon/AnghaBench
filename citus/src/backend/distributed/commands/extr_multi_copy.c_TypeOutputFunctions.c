
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef scalar_t__ Oid ;
typedef int FmgrInfo ;


 scalar_t__ InvalidOid ;
 int fmgr_info (scalar_t__,int *) ;
 int getTypeBinaryOutputInfo (scalar_t__,scalar_t__*,int*) ;
 int getTypeOutputInfo (scalar_t__,scalar_t__*,int*) ;
 int * palloc0 (int) ;

__attribute__((used)) static FmgrInfo *
TypeOutputFunctions(uint32 columnCount, Oid *typeIdArray, bool binaryFormat)
{
 FmgrInfo *columnOutputFunctions = palloc0(columnCount * sizeof(FmgrInfo));

 uint32 columnIndex = 0;
 for (columnIndex = 0; columnIndex < columnCount; columnIndex++)
 {
  FmgrInfo *currentOutputFunction = &columnOutputFunctions[columnIndex];
  Oid columnTypeId = typeIdArray[columnIndex];
  bool typeVariableLength = 0;
  Oid outputFunctionId = InvalidOid;


  if (columnTypeId == InvalidOid)
  {
   continue;
  }
  else if (binaryFormat)
  {
   getTypeBinaryOutputInfo(columnTypeId, &outputFunctionId, &typeVariableLength);
  }
  else
  {
   getTypeOutputInfo(columnTypeId, &outputFunctionId, &typeVariableLength);
  }

  fmgr_info(outputFunctionId, currentOutputFunction);
 }

 return columnOutputFunctions;
}
