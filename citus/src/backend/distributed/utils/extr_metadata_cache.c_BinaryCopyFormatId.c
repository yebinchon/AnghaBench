
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ binaryCopyFormatId; } ;
typedef scalar_t__ Oid ;


 scalar_t__ CitusCopyFormatTypeId () ;
 scalar_t__ InvalidOid ;
 scalar_t__ LookupEnumValueId (scalar_t__,char*) ;
 TYPE_1__ MetadataCache ;

Oid
BinaryCopyFormatId(void)
{
 if (MetadataCache.binaryCopyFormatId == InvalidOid)
 {
  Oid copyFormatTypeId = CitusCopyFormatTypeId();
  MetadataCache.binaryCopyFormatId = LookupEnumValueId(copyFormatTypeId, "binary");
 }

 return MetadataCache.binaryCopyFormatId;
}
