
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FmgrInfo ;
typedef int Datum ;


 int DEFAULT_COLLATION_OID ;
 int FunctionCall2Coll (int *,int ,int ,int ) ;

Datum
CompareCall2(FmgrInfo *functionInfo, Datum leftArgument, Datum rightArgument)
{
 Datum result = FunctionCall2Coll(functionInfo, DEFAULT_COLLATION_OID,
          leftArgument, rightArgument);
 return result;
}
