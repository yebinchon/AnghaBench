
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FunctionCallInfo ;
typedef int Datum ;


 int PerformCompare (int ) ;
 int fcSetArg (int ,int,int ) ;

__attribute__((used)) static int
PerformValueCompare(FunctionCallInfo compareFunctionCall, Datum a, Datum b)
{
 fcSetArg(compareFunctionCall, 0, a);
 fcSetArg(compareFunctionCall, 1, b);

 return PerformCompare(compareFunctionCall);
}
