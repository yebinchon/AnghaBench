
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int* entryData; } ;
struct TYPE_7__ {int cwdCluster; } ;
typedef TYPE_1__ PARTITION ;
typedef TYPE_2__ DIR_ENTRY ;


 int ATTRIB_DIR ;
 size_t DIR_ENTRY_attributes ;
 int _FAT_directory_entryFromPath (TYPE_1__*,TYPE_2__*,char const*,int *) ;
 int _FAT_directory_entryGetCluster (TYPE_1__*,int*) ;

bool _FAT_directory_chdir (PARTITION* partition, const char* path) {
 DIR_ENTRY entry;

 if (!_FAT_directory_entryFromPath (partition, &entry, path, ((void*)0))) {
  return 0;
 }

 if (!(entry.entryData[DIR_ENTRY_attributes] & ATTRIB_DIR)) {
  return 0;
 }

 partition->cwdCluster = _FAT_directory_entryGetCluster (partition, entry.entryData);

 return 1;
}
