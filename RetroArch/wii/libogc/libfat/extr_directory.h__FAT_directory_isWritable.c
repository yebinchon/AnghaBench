
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* entryData; } ;
typedef TYPE_1__ DIR_ENTRY ;


 int ATTRIB_RO ;
 size_t DIR_ENTRY_attributes ;

__attribute__((used)) static inline bool _FAT_directory_isWritable (DIR_ENTRY* entry) {
 return ((entry->entryData[DIR_ENTRY_attributes] & ATTRIB_RO) == 0);
}
