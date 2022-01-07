
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int coercionType; int typioparam; int inputFunction; int outputFunction; int coerceFunction; } ;
typedef int Oid ;
typedef int FmgrInfo ;
typedef int Datum ;
typedef TYPE_1__ CopyCoercionData ;





 int ERROR ;
 int FunctionCall1 (int *,int ) ;
 int FunctionCall3 (int *,int ,int ,int ) ;
 int Int32GetDatum (int) ;
 int ereport (int ,int ) ;
 int errmsg (char*) ;

Datum
CoerceColumnValue(Datum inputValue, CopyCoercionData *coercionPath)
{
 switch (coercionPath->coercionType)
 {
  case 0:
  {
   return inputValue;
  }

  case 128:
  {
   return inputValue;
  }

  case 129:
  {
   FmgrInfo *coerceFunction = &(coercionPath->coerceFunction);
   Datum outputValue = FunctionCall1(coerceFunction, inputValue);
   return outputValue;
  }

  case 130:
  {
   FmgrInfo *outFunction = &(coercionPath->outputFunction);
   Datum textRepr = FunctionCall1(outFunction, inputValue);

   FmgrInfo *inFunction = &(coercionPath->inputFunction);
   Oid typioparam = coercionPath->typioparam;
   Datum outputValue = FunctionCall3(inFunction, textRepr, typioparam,
             Int32GetDatum(-1));

   return outputValue;
  }

  default:
  {

   ereport(ERROR, (errmsg("unsupported coercion type")));
  }
 }
}
