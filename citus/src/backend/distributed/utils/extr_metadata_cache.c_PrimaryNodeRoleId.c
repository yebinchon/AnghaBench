
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ primaryNodeRoleId; } ;
typedef scalar_t__ Oid ;


 scalar_t__ LookupStringEnumValueId (char*,char*) ;
 TYPE_1__ MetadataCache ;

Oid
PrimaryNodeRoleId(void)
{
 if (!MetadataCache.primaryNodeRoleId)
 {
  MetadataCache.primaryNodeRoleId = LookupStringEnumValueId("noderole", "primary");
 }

 return MetadataCache.primaryNodeRoleId;
}
