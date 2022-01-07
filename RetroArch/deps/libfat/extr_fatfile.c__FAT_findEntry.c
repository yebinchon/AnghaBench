
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PARTITION ;
typedef int DIR_ENTRY ;


 int _FAT_directory_entryFromPath (int *,int *,char const*,int *) ;
 int * _FAT_partition_getPartitionFromPath (char const*) ;
 char* strchr (char const*,char) ;

bool _FAT_findEntry(const char *path, DIR_ENTRY *dirEntry) {
 PARTITION *partition = _FAT_partition_getPartitionFromPath(path);


 if( !partition )
  return 0;


 if (strchr (path, ':') != ((void*)0))
  path = strchr (path, ':') + 1;
 if (strchr (path, ':') != ((void*)0))
  return 0;


 return _FAT_directory_entryFromPath (partition, dirEntry, path, ((void*)0));

}
