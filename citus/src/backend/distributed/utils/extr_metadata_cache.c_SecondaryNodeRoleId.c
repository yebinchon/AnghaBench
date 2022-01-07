
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ secondaryNodeRoleId; } ;
typedef scalar_t__ Oid ;


 scalar_t__ LookupStringEnumValueId (char*,char*) ;
 TYPE_1__ MetadataCache ;

Oid
SecondaryNodeRoleId(void)
{
 if (!MetadataCache.secondaryNodeRoleId)
 {
  MetadataCache.secondaryNodeRoleId = LookupStringEnumValueId("noderole",
                 "secondary");
 }

 return MetadataCache.secondaryNodeRoleId;
}
