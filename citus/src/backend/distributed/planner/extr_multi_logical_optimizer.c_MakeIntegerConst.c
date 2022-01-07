
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int int16 ;
typedef int Datum ;
typedef int Const ;


 int INT4OID ;
 int Int32GetDatum (int) ;
 int get_typcollation (int ) ;
 int get_typlen (int ) ;
 int * makeConst (int ,int const,int const,int const,int ,int const,int const) ;

__attribute__((used)) static Const *
MakeIntegerConst(int32 integerValue)
{
 const int typeCollationId = get_typcollation(INT4OID);
 const int16 typeLength = get_typlen(INT4OID);
 const int32 typeModifier = -1;
 const bool typeIsNull = 0;
 const bool typePassByValue = 1;

 Datum integerDatum = Int32GetDatum(integerValue);
 Const *integerConst = makeConst(INT4OID, typeModifier, typeCollationId, typeLength,
         integerDatum, typeIsNull, typePassByValue);

 return integerConst;
}
