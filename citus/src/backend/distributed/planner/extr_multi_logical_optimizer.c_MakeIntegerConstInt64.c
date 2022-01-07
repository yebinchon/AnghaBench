
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64 ;
typedef int int32 ;
typedef int int16 ;
typedef int Datum ;
typedef int Const ;


 int INT8OID ;
 int Int64GetDatum (int ) ;
 int get_typcollation (int ) ;
 int get_typlen (int ) ;
 int * makeConst (int ,int const,int const,int const,int ,int const,int const) ;

__attribute__((used)) static Const *
MakeIntegerConstInt64(int64 integerValue)
{
 const int typeCollationId = get_typcollation(INT8OID);
 const int16 typeLength = get_typlen(INT8OID);
 const int32 typeModifier = -1;
 const bool typeIsNull = 0;
 const bool typePassByValue = 1;

 Datum integer64Datum = Int64GetDatum(integerValue);
 Const *integer64Const = makeConst(INT8OID, typeModifier, typeCollationId, typeLength,
           integer64Datum, typeIsNull, typePassByValue);

 return integer64Const;
}
