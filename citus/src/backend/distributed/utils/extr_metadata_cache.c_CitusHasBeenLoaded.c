
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int extensionLoaded; } ;


 int CitusHasBeenLoadedInternal () ;
 int DistColocationRelationId () ;
 int DistPartitionRelationId () ;
 TYPE_1__ MetadataCache ;
 int StartupCitusBackend () ;
 scalar_t__ creating_extension ;

bool
CitusHasBeenLoaded(void)
{
 if (!MetadataCache.extensionLoaded || creating_extension)
 {





  bool extensionLoaded = CitusHasBeenLoadedInternal();

  if (extensionLoaded && !MetadataCache.extensionLoaded)
  {
   StartupCitusBackend();
   DistPartitionRelationId();






   DistColocationRelationId();
  }

  MetadataCache.extensionLoaded = extensionLoaded;
 }

 return MetadataCache.extensionLoaded;
}
