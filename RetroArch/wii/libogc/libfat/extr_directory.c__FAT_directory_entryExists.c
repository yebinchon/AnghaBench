
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {char const* filename; int entryData; } ;
typedef int PARTITION ;
typedef TYPE_1__ DIR_ENTRY ;


 int MAX_ALIAS_LENGTH ;
 size_t NAME_MAX ;
 int _FAT_directory_entryGetAlias (int ,char*) ;
 int _FAT_directory_getFirstEntry (int *,TYPE_1__*,int ) ;
 int _FAT_directory_getNextEntry (int *,TYPE_1__*) ;
 scalar_t__ _FAT_directory_mbsncasecmp (char const*,char const*,size_t) ;
 scalar_t__ strncasecmp (char const*,char*,int) ;
 size_t strnlen (char const*,size_t) ;

__attribute__((used)) static bool _FAT_directory_entryExists (PARTITION* partition, const char* name, uint32_t dirCluster) {
 DIR_ENTRY tempEntry;
 bool foundFile;
 char alias[MAX_ALIAS_LENGTH];
 size_t dirnameLength;

 dirnameLength = strnlen(name, NAME_MAX);

 if (dirnameLength >= NAME_MAX) {
  return 0;
 }


 foundFile = _FAT_directory_getFirstEntry (partition, &tempEntry, dirCluster);

 while (foundFile) {

  if ((dirnameLength == strnlen(tempEntry.filename, NAME_MAX))
   && (_FAT_directory_mbsncasecmp(name, tempEntry.filename, dirnameLength) == 0)) {
    return 1;
  }


  _FAT_directory_entryGetAlias (tempEntry.entryData, alias);
  if ((strncasecmp(name, alias, MAX_ALIAS_LENGTH) == 0)) {
    return 1;
  }
  foundFile = _FAT_directory_getNextEntry (partition, &tempEntry);
 }
 return 0;
}
