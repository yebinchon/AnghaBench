
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int Datum ;


 int CStringGetDatum (char*) ;
 int DatumGetObjectId (int ) ;
 int DirectFunctionCall2 (int ,int ,int ) ;
 int ObjectIdGetDatum (int ) ;
 int enum_in ;

__attribute__((used)) static Oid
LookupEnumValueId(Oid typeId, char *valueName)
{
 Datum typeIdDatum = ObjectIdGetDatum(typeId);
 Datum valueDatum = CStringGetDatum(valueName);
 Datum valueIdDatum = DirectFunctionCall2(enum_in, valueDatum, typeIdDatum);
 Oid valueId = DatumGetObjectId(valueIdDatum);

 return valueId;
}
