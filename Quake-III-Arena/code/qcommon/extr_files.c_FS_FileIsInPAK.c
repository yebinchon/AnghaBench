
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* pack; struct TYPE_6__* next; } ;
typedef TYPE_1__ searchpath_t ;
struct TYPE_7__ {int pure_checksum; TYPE_3__** hashTable; int hashSize; } ;
typedef TYPE_2__ pack_t ;
struct TYPE_8__ {struct TYPE_8__* next; int name; } ;
typedef TYPE_3__ fileInPack_t ;


 int Com_Error (int ,char*) ;
 int ERR_FATAL ;
 int FS_FilenameCompare (int ,char const*) ;
 long FS_HashFileName (char const*,int ) ;
 int FS_PakIsPure (TYPE_2__*) ;
 TYPE_1__* fs_searchpaths ;
 scalar_t__ strstr (char const*,char*) ;

int FS_FileIsInPAK(const char *filename, int *pChecksum ) {
 searchpath_t *search;
 pack_t *pak;
 fileInPack_t *pakFile;
 long hash = 0;

 if ( !fs_searchpaths ) {
  Com_Error( ERR_FATAL, "Filesystem call made without initialization\n" );
 }

 if ( !filename ) {
  Com_Error( ERR_FATAL, "FS_FOpenFileRead: NULL 'filename' parameter passed\n" );
 }


 if ( filename[0] == '/' || filename[0] == '\\' ) {
  filename++;
 }




 if ( strstr( filename, ".." ) || strstr( filename, "::" ) ) {
  return -1;
 }





 for ( search = fs_searchpaths ; search ; search = search->next ) {

  if (search->pack) {
   hash = FS_HashFileName(filename, search->pack->hashSize);
  }

  if ( search->pack && search->pack->hashTable[hash] ) {

   if ( !FS_PakIsPure(search->pack) ) {
    continue;
   }


   pak = search->pack;
   pakFile = pak->hashTable[hash];
   do {

    if ( !FS_FilenameCompare( pakFile->name, filename ) ) {
     if (pChecksum) {
      *pChecksum = pak->pure_checksum;
     }
     return 1;
    }
    pakFile = pakFile->next;
   } while(pakFile != ((void*)0));
  }
 }
 return -1;
}
