
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16 ;
typedef scalar_t__ Oid ;
typedef int FmgrInfo ;


 int ERROR ;
 scalar_t__ GetDefaultOpClass (scalar_t__,scalar_t__) ;
 scalar_t__ InvalidOid ;
 int ereport (int ,int ) ;
 int errmsg (char*,scalar_t__) ;
 int fmgr_info (scalar_t__,int *) ;
 scalar_t__ get_opclass_family (scalar_t__) ;
 scalar_t__ get_opclass_input_type (scalar_t__) ;
 scalar_t__ get_opfamily_proc (scalar_t__,scalar_t__,scalar_t__,int ) ;
 scalar_t__ palloc0 (int) ;

FmgrInfo *
GetFunctionInfo(Oid typeId, Oid accessMethodId, int16 procedureId)
{
 FmgrInfo *functionInfo = (FmgrInfo *) palloc0(sizeof(FmgrInfo));


 Oid operatorClassId = GetDefaultOpClass(typeId, accessMethodId);

 Oid operatorFamilyId = get_opclass_family(operatorClassId);
 Oid operatorClassInputType = get_opclass_input_type(operatorClassId);

 Oid operatorId = get_opfamily_proc(operatorFamilyId, operatorClassInputType,
            operatorClassInputType, procedureId);

 if (operatorId == InvalidOid)
 {
  ereport(ERROR, (errmsg("could not find function for data typeId %u", typeId)));
 }


 fmgr_info(operatorId, functionInfo);

 return functionInfo;
}
