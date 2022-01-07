
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int Oid ;
typedef int Datum ;
typedef int Const ;


 int INT4OID ;
 int InvalidOid ;
 int * makeConst (int ,int,int ,int,int ,int,int) ;

Const *
MakeInt4Constant(Datum constantValue)
{
 Oid constantType = INT4OID;
 int32 constantTypeMode = -1;
 Oid constantCollationId = InvalidOid;
 int constantLength = sizeof(int32);
 bool constantIsNull = 0;
 bool constantByValue = 1;

 Const *int4Constant = makeConst(constantType, constantTypeMode, constantCollationId,
         constantLength, constantValue, constantIsNull,
         constantByValue);
 return int4Constant;
}
