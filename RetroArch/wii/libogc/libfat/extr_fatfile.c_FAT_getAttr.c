
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* entryData; } ;
typedef TYPE_1__ DIR_ENTRY ;


 size_t DIR_ENTRY_attributes ;
 int _FAT_findEntry (char const*,TYPE_1__*) ;

int FAT_getAttr(const char *file) {
 DIR_ENTRY dirEntry;
 if (!_FAT_findEntry(file,&dirEntry)) return -1;

 return dirEntry.entryData[DIR_ENTRY_attributes];
}
