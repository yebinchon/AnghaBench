
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ParamListInfo ;
typedef int Oid ;


 int ExtractParametersFromParamList (int ,int **,char const***,int) ;

__attribute__((used)) static void
ExtractParametersForLocalExecution(ParamListInfo paramListInfo, Oid **parameterTypes,
           const char ***parameterValues)
{
 ExtractParametersFromParamList(paramListInfo, parameterTypes,
           parameterValues, 1);
}
