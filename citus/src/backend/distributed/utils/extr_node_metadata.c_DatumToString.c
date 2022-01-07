
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int Datum ;


 int InvalidOid ;
 char* OidOutputFunctionCall (int ,int ) ;
 int getTypeOutputInfo (int ,int *,int*) ;

char *
DatumToString(Datum datum, Oid dataType)
{
 char *outputString = ((void*)0);
 Oid typIoFunc = InvalidOid;
 bool typIsVarlena = 0;

 getTypeOutputInfo(dataType, &typIoFunc, &typIsVarlena);
 outputString = OidOutputFunctionCall(typIoFunc, datum);

 return outputString;
}
