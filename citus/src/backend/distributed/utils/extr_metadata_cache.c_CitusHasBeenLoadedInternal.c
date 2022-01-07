
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Oid ;


 scalar_t__ CurrentExtensionObject ;
 scalar_t__ InvalidOid ;
 scalar_t__ IsBinaryUpgrade ;
 scalar_t__ creating_extension ;
 scalar_t__ get_extension_oid (char*,int) ;

__attribute__((used)) static bool
CitusHasBeenLoadedInternal(void)
{
 Oid citusExtensionOid = InvalidOid;

 if (IsBinaryUpgrade)
 {

  return 0;
 }

 citusExtensionOid = get_extension_oid("citus", 1);
 if (citusExtensionOid == InvalidOid)
 {

  return 0;
 }

 if (creating_extension && CurrentExtensionObject == citusExtensionOid)
 {




  return 0;
 }


 return 1;
}
