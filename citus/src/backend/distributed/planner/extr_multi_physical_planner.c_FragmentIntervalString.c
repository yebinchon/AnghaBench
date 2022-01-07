
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int maxValue; int minValue; int maxValueExists; int minValueExists; int valueTypeId; } ;
typedef int * StringInfo ;
typedef TYPE_1__ ShardInterval ;
typedef int Oid ;
typedef int FmgrInfo ;


 int Assert (int ) ;
 int InvalidOid ;
 char* OutputFunctionCall (int *,int ) ;
 int appendStringInfo (int *,char*,char*,char*) ;
 int fmgr_info (int ,int *) ;
 int getTypeOutputInfo (int ,int *,int*) ;
 int * makeStringInfo () ;
 scalar_t__ palloc0 (int) ;

__attribute__((used)) static StringInfo
FragmentIntervalString(ShardInterval *fragmentInterval)
{
 StringInfo fragmentIntervalString = ((void*)0);
 Oid typeId = fragmentInterval->valueTypeId;
 Oid outputFunctionId = InvalidOid;
 bool typeVariableLength = 0;
 FmgrInfo *outputFunction = ((void*)0);
 char *minValueString = ((void*)0);
 char *maxValueString = ((void*)0);

 Assert(fragmentInterval->minValueExists);
 Assert(fragmentInterval->maxValueExists);

 outputFunction = (FmgrInfo *) palloc0(sizeof(FmgrInfo));
 getTypeOutputInfo(typeId, &outputFunctionId, &typeVariableLength);
 fmgr_info(outputFunctionId, outputFunction);

 minValueString = OutputFunctionCall(outputFunction, fragmentInterval->minValue);
 maxValueString = OutputFunctionCall(outputFunction, fragmentInterval->maxValue);

 fragmentIntervalString = makeStringInfo();
 appendStringInfo(fragmentIntervalString, "[%s,%s]", minValueString, maxValueString);

 return fragmentIntervalString;
}
