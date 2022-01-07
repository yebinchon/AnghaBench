
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16 ;
typedef int Oid ;


 int IOFunc_send ;
 int InvalidOid ;
 scalar_t__ OidIsValid (int ) ;
 int get_type_io_data (int ,int ,int *,int*,char*,char*,int *,int *) ;

__attribute__((used)) static bool
BinaryOutputFunctionDefined(Oid typeId)
{
 Oid typeFunctionId = InvalidOid;
 Oid typeIoParam = InvalidOid;
 int16 typeLength = 0;
 bool typeByVal = 0;
 char typeAlign = 0;
 char typeDelim = 0;

 get_type_io_data(typeId, IOFunc_send, &typeLength, &typeByVal,
      &typeAlign, &typeDelim, &typeIoParam, &typeFunctionId);

 if (OidIsValid(typeFunctionId))
 {
  return 1;
 }

 return 0;
}
