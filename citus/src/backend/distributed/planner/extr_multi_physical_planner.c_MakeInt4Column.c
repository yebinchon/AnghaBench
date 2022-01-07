
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int Var ;
typedef int Oid ;
typedef int Index ;
typedef int AttrNumber ;


 int INT4OID ;
 int InvalidOid ;
 int RESERVED_HASHED_COLUMN_ID ;
 int * makeVar (int ,int ,int ,int,int ,int ) ;

Var *
MakeInt4Column()
{
 Index tableId = 0;
 AttrNumber columnAttributeNumber = RESERVED_HASHED_COLUMN_ID;
 Oid columnType = INT4OID;
 int32 columnTypeMod = -1;
 Oid columnCollationOid = InvalidOid;
 Index columnLevelSup = 0;

 Var *int4Column = makeVar(tableId, columnAttributeNumber, columnType,
         columnTypeMod, columnCollationOid, columnLevelSup);
 return int4Column;
}
