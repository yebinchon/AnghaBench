
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* flinfo; scalar_t__ isnull; } ;
struct TYPE_5__ {int fn_oid; } ;
typedef TYPE_2__* FunctionCallInfo ;
typedef int Datum ;


 int DatumGetInt32 (int ) ;
 int ERROR ;
 int FunctionCallInvoke (TYPE_2__*) ;
 int elog (int ,char*,int ) ;

__attribute__((used)) static int
PerformCompare(FunctionCallInfo compareFunctionCall)
{
 Datum result = FunctionCallInvoke(compareFunctionCall);

 if (compareFunctionCall->isnull)
 {
  elog(ERROR, "function %u returned NULL", compareFunctionCall->flinfo->fn_oid);
 }

 return DatumGetInt32(result);
}
