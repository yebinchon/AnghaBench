
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int Oid ;
typedef int Datum ;


 int InvalidOid ;
 int OidInputFunctionCall (int ,char*,int ,int) ;
 int getBaseTypeAndTypmod (int ,int*) ;
 int getTypeInputInfo (int ,int *,int *) ;

Datum
StringToDatum(char *inputString, Oid dataType)
{
 Oid typIoFunc = InvalidOid;
 Oid typIoParam = InvalidOid;
 int32 typeModifier = -1;
 Datum datum = 0;

 getTypeInputInfo(dataType, &typIoFunc, &typIoParam);
 getBaseTypeAndTypmod(dataType, &typeModifier);

 datum = OidInputFunctionCall(typIoFunc, inputString, typIoParam, typeModifier);

 return datum;
}
