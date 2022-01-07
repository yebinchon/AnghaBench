
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Oid ;


 scalar_t__ InvalidOid ;
 scalar_t__ LookupEnumValueId (scalar_t__,char*) ;
 scalar_t__ LookupTypeOid (char*) ;

__attribute__((used)) static Oid
LookupStringEnumValueId(char *enumName, char *valueName)
{
 Oid enumTypeId = LookupTypeOid(enumName);

 if (enumTypeId == InvalidOid)
 {
  return InvalidOid;
 }
 else
 {
  Oid valueId = LookupEnumValueId(enumTypeId, valueName);
  return valueId;
 }
}
