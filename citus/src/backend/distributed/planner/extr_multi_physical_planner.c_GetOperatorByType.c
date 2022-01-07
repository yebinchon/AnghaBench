
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16 ;
typedef int Oid ;


 int GetDefaultOpClass (int ,int ) ;
 int get_opclass_family (int ) ;
 int get_opclass_input_type (int ) ;
 int get_opfamily_member (int ,int ,int ,int ) ;

__attribute__((used)) static Oid
GetOperatorByType(Oid typeId, Oid accessMethodId, int16 strategyNumber)
{

 Oid operatorClassId = GetDefaultOpClass(typeId, accessMethodId);

 Oid operatorFamily = get_opclass_family(operatorClassId);
 Oid operatorClassInputType = get_opclass_input_type(operatorClassId);


 Oid operatorId = get_opfamily_member(operatorFamily, operatorClassInputType,
           operatorClassInputType, strategyNumber);
 return operatorId;
}
