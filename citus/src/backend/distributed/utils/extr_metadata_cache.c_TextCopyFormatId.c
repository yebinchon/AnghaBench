
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ textCopyFormatId; } ;
typedef scalar_t__ Oid ;


 scalar_t__ CitusCopyFormatTypeId () ;
 scalar_t__ InvalidOid ;
 scalar_t__ LookupEnumValueId (scalar_t__,char*) ;
 TYPE_1__ MetadataCache ;

Oid
TextCopyFormatId(void)
{
 if (MetadataCache.textCopyFormatId == InvalidOid)
 {
  Oid copyFormatTypeId = CitusCopyFormatTypeId();
  MetadataCache.textCopyFormatId = LookupEnumValueId(copyFormatTypeId, "text");
 }

 return MetadataCache.textCopyFormatId;
}
