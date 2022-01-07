
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int16 ;
struct TYPE_3__ {scalar_t__ vartype; } ;
typedef TYPE_1__ Var ;
typedef scalar_t__ Oid ;


 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 scalar_t__ GetDefaultOpClass (scalar_t__,scalar_t__) ;
 scalar_t__ InvalidOid ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdatatype (scalar_t__) ;
 int errdetail (char*) ;
 int errmsg (char*,int ) ;
 int format_type_be (scalar_t__) ;
 scalar_t__ get_opclass_family (scalar_t__) ;
 scalar_t__ get_opclass_input_type (scalar_t__) ;
 scalar_t__ get_opfamily_proc (scalar_t__,scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static Oid
SupportFunctionForColumn(Var *partitionColumn, Oid accessMethodId,
       int16 supportFunctionNumber)
{
 Oid operatorFamilyId = InvalidOid;
 Oid supportFunctionOid = InvalidOid;
 Oid operatorClassInputType = InvalidOid;
 Oid columnOid = partitionColumn->vartype;
 Oid operatorClassId = GetDefaultOpClass(columnOid, accessMethodId);


 if (operatorClassId == InvalidOid)
 {
  ereport(ERROR, (errcode(ERRCODE_UNDEFINED_OBJECT),
      errmsg("data type %s has no default operator class for specified"
          " partition method", format_type_be(columnOid)),
      errdatatype(columnOid),
      errdetail("Partition column types must have a default operator"
          " class defined.")));
 }

 operatorFamilyId = get_opclass_family(operatorClassId);
 operatorClassInputType = get_opclass_input_type(operatorClassId);
 supportFunctionOid = get_opfamily_proc(operatorFamilyId, operatorClassInputType,
             operatorClassInputType,
             supportFunctionNumber);

 return supportFunctionOid;
}
