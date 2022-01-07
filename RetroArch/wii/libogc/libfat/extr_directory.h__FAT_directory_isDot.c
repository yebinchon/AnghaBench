
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* filename; } ;
typedef TYPE_1__ DIR_ENTRY ;



__attribute__((used)) static inline bool _FAT_directory_isDot (DIR_ENTRY* entry) {
 return ((entry->filename[0] == '.') && ((entry->filename[1] == '\0') ||
  ((entry->filename[1] == '.') && entry->filename[2] == '\0')));
}
