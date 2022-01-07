
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ ptype; int value; scalar_t__ isnull; } ;
struct TYPE_4__ {int numParams; TYPE_2__* params; } ;
typedef TYPE_1__* ParamListInfo ;
typedef TYPE_2__ ParamExternData ;
typedef scalar_t__ Oid ;


 scalar_t__ FirstNormalObjectId ;
 scalar_t__ InvalidOid ;
 char* OidOutputFunctionCall (scalar_t__,int ) ;
 scalar_t__ TEXTOID ;
 int getTypeOutputInfo (scalar_t__,scalar_t__*,int*) ;
 scalar_t__ palloc0 (int) ;

void
ExtractParametersFromParamList(ParamListInfo paramListInfo,
          Oid **parameterTypes,
          const char ***parameterValues, bool
          useOriginalCustomTypeOids)
{
 int parameterIndex = 0;
 int parameterCount = paramListInfo->numParams;

 *parameterTypes = (Oid *) palloc0(parameterCount * sizeof(Oid));
 *parameterValues = (const char **) palloc0(parameterCount * sizeof(char *));


 for (parameterIndex = 0; parameterIndex < parameterCount; parameterIndex++)
 {
  ParamExternData *parameterData = &paramListInfo->params[parameterIndex];
  Oid typeOutputFunctionId = InvalidOid;
  bool variableLengthType = 0;






  if (parameterData->ptype >= FirstNormalObjectId && !useOriginalCustomTypeOids)
  {
   (*parameterTypes)[parameterIndex] = 0;
  }
  else
  {
   (*parameterTypes)[parameterIndex] = parameterData->ptype;
  }







  if (parameterData->ptype == 0)
  {
   (*parameterValues)[parameterIndex] = ((void*)0);
   (*parameterTypes)[parameterIndex] = TEXTOID;

   continue;
  }





  if (parameterData->isnull)
  {
   (*parameterValues)[parameterIndex] = ((void*)0);

   continue;
  }

  getTypeOutputInfo(parameterData->ptype, &typeOutputFunctionId,
        &variableLengthType);

  (*parameterValues)[parameterIndex] = OidOutputFunctionCall(typeOutputFunctionId,
                   parameterData->value);
 }
}
