
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int coercionType; int coerceFunction; int inputFunction; int typioparam; int outputFunction; } ;
typedef scalar_t__ Oid ;
typedef TYPE_1__ CopyCoercionData ;
typedef int CoercionPathType ;


 int Assert (int) ;
 int COERCION_EXPLICIT ;





 int ERROR ;
 scalar_t__ InvalidOid ;
 int ereport (int ,int ) ;
 int errmsg (char*,...) ;
 int find_coercion_pathway (scalar_t__,scalar_t__,int ,scalar_t__*) ;
 int fmgr_info (scalar_t__,int *) ;
 int getTypeInputInfo (scalar_t__,scalar_t__*,int *) ;
 int getTypeOutputInfo (scalar_t__,scalar_t__*,int*) ;
 scalar_t__ get_base_element_type (scalar_t__) ;

void
ConversionPathForTypes(Oid inputType, Oid destType, CopyCoercionData *result)
{
 Oid coercionFuncId = InvalidOid;
 CoercionPathType coercionType = 128;

 if (destType == inputType)
 {
  result->coercionType = 128;
  return;
 }

 coercionType = find_coercion_pathway(destType, inputType,
           COERCION_EXPLICIT,
           &coercionFuncId);

 switch (coercionType)
 {
  case 129:
  {
   ereport(ERROR, (errmsg("cannot cast %d to %d", inputType, destType)));
   return;
  }

  case 132:
  {
   Oid inputBaseType = get_base_element_type(inputType);
   Oid destBaseType = get_base_element_type(destType);
   CoercionPathType baseCoercionType = 129;

   if (inputBaseType != InvalidOid && destBaseType != InvalidOid)
   {
    baseCoercionType = find_coercion_pathway(inputBaseType, destBaseType,
               COERCION_EXPLICIT,
               &coercionFuncId);
   }

   if (baseCoercionType != 131)
   {
    ereport(ERROR, (errmsg("can not run query which uses an implicit coercion"
            " between array types")));
   }
  }



  case 131:
  {
   result->coercionType = 131;

   {
    bool typisvarlena = 0;
    Oid iofunc = InvalidOid;
    getTypeOutputInfo(inputType, &iofunc, &typisvarlena);
    fmgr_info(iofunc, &(result->outputFunction));
   }

   {
    Oid iofunc = InvalidOid;
    getTypeInputInfo(destType, &iofunc, &(result->typioparam));
    fmgr_info(iofunc, &(result->inputFunction));
   }

   return;
  }

  case 130:
  {
   result->coercionType = 130;
   fmgr_info(coercionFuncId, &(result->coerceFunction));
   return;
  }

  case 128:
  {
   result->coercionType = 128;
   return;
  }

  default:
   Assert(0);
 }
}
