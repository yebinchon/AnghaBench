
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int FunctionOidExtended (char const*,char const*,int,int) ;

Oid
FunctionOid(const char *schemaName, const char *functionName, int argumentCount)
{
 return FunctionOidExtended(schemaName, functionName, argumentCount, 0);
}
