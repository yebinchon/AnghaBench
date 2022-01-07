
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Oid ;


 int AccessShareLock ;
 int ExtensionRelationId ;
 scalar_t__ InvalidOid ;
 int LockDatabaseObject (int ,scalar_t__,int ,int ) ;
 scalar_t__ get_extension_oid (char*,int) ;

__attribute__((used)) static bool
LockCitusExtension(void)
{
 Oid recheckExtensionOid = InvalidOid;

 Oid extensionOid = get_extension_oid("citus", 1);
 if (extensionOid == InvalidOid)
 {

  return 0;
 }

 LockDatabaseObject(ExtensionRelationId, extensionOid, 0, AccessShareLock);





 recheckExtensionOid = get_extension_oid("citus", 1);
 if (recheckExtensionOid != extensionOid)
 {
  return 0;
 }

 return 1;
}
