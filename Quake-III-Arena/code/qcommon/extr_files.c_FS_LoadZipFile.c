
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int number_entry; } ;
typedef TYPE_1__ unz_global_info ;
struct TYPE_9__ {scalar_t__ uncompressed_size; void* crc; } ;
typedef TYPE_2__ unz_file_info ;
typedef int unzFile ;
struct TYPE_10__ {int hashSize; char* pakFilename; char* pakBasename; int numfiles; TYPE_4__* buildBuffer; void* pure_checksum; void* checksum; TYPE_4__** hashTable; int handle; } ;
typedef TYPE_3__ pack_t ;
typedef int filename_inzip ;
struct TYPE_11__ {char* name; struct TYPE_11__* next; int pos; } ;
typedef TYPE_4__ fileInPack_t ;


 void* Com_BlockChecksum (int*,int) ;
 void* Com_BlockChecksumKey (int*,int,void*) ;
 long FS_HashFileName (char*,int) ;
 void* LittleLong (void*) ;
 int MAX_FILEHASH_SIZE ;
 int MAX_ZPATH ;
 int Q_stricmp (char*,char*) ;
 int Q_strlwr (char*) ;
 int Q_strncpyz (char*,char const*,int) ;
 int UNZ_OK ;
 int Z_Free (int*) ;
 void* Z_Malloc (int) ;
 void* fs_checksumFeed ;
 int fs_packFiles ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int unzGetCurrentFileInfo (int ,TYPE_2__*,char*,int,int *,int ,int *,int ) ;
 int unzGetCurrentFileInfoPosition (int ,int *) ;
 int unzGetGlobalInfo (int ,TYPE_1__*) ;
 int unzGoToFirstFile (int ) ;
 int unzGoToNextFile (int ) ;
 int unzOpen (char*) ;

__attribute__((used)) static pack_t *FS_LoadZipFile( char *zipfile, const char *basename )
{
 fileInPack_t *buildBuffer;
 pack_t *pack;
 unzFile uf;
 int err;
 unz_global_info gi;
 char filename_inzip[MAX_ZPATH];
 unz_file_info file_info;
 int i, len;
 long hash;
 int fs_numHeaderLongs;
 int *fs_headerLongs;
 char *namePtr;

 fs_numHeaderLongs = 0;

 uf = unzOpen(zipfile);
 err = unzGetGlobalInfo (uf,&gi);

 if (err != UNZ_OK)
  return ((void*)0);

 fs_packFiles += gi.number_entry;

 len = 0;
 unzGoToFirstFile(uf);
 for (i = 0; i < gi.number_entry; i++)
 {
  err = unzGetCurrentFileInfo(uf, &file_info, filename_inzip, sizeof(filename_inzip), ((void*)0), 0, ((void*)0), 0);
  if (err != UNZ_OK) {
   break;
  }
  len += strlen(filename_inzip) + 1;
  unzGoToNextFile(uf);
 }

 buildBuffer = Z_Malloc( (gi.number_entry * sizeof( fileInPack_t )) + len );
 namePtr = ((char *) buildBuffer) + gi.number_entry * sizeof( fileInPack_t );
 fs_headerLongs = Z_Malloc( gi.number_entry * sizeof(int) );



 for (i = 1; i <= MAX_FILEHASH_SIZE; i <<= 1) {
  if (i > gi.number_entry) {
   break;
  }
 }

 pack = Z_Malloc( sizeof( pack_t ) + i * sizeof(fileInPack_t *) );
 pack->hashSize = i;
 pack->hashTable = (fileInPack_t **) (((char *) pack) + sizeof( pack_t ));
 for(i = 0; i < pack->hashSize; i++) {
  pack->hashTable[i] = ((void*)0);
 }

 Q_strncpyz( pack->pakFilename, zipfile, sizeof( pack->pakFilename ) );
 Q_strncpyz( pack->pakBasename, basename, sizeof( pack->pakBasename ) );


 if ( strlen( pack->pakBasename ) > 4 && !Q_stricmp( pack->pakBasename + strlen( pack->pakBasename ) - 4, ".pk3" ) ) {
  pack->pakBasename[strlen( pack->pakBasename ) - 4] = 0;
 }

 pack->handle = uf;
 pack->numfiles = gi.number_entry;
 unzGoToFirstFile(uf);

 for (i = 0; i < gi.number_entry; i++)
 {
  err = unzGetCurrentFileInfo(uf, &file_info, filename_inzip, sizeof(filename_inzip), ((void*)0), 0, ((void*)0), 0);
  if (err != UNZ_OK) {
   break;
  }
  if (file_info.uncompressed_size > 0) {
   fs_headerLongs[fs_numHeaderLongs++] = LittleLong(file_info.crc);
  }
  Q_strlwr( filename_inzip );
  hash = FS_HashFileName(filename_inzip, pack->hashSize);
  buildBuffer[i].name = namePtr;
  strcpy( buildBuffer[i].name, filename_inzip );
  namePtr += strlen(filename_inzip) + 1;

  unzGetCurrentFileInfoPosition(uf, &buildBuffer[i].pos);

  buildBuffer[i].next = pack->hashTable[hash];
  pack->hashTable[hash] = &buildBuffer[i];
  unzGoToNextFile(uf);
 }

 pack->checksum = Com_BlockChecksum( fs_headerLongs, 4 * fs_numHeaderLongs );
 pack->pure_checksum = Com_BlockChecksumKey( fs_headerLongs, 4 * fs_numHeaderLongs, LittleLong(fs_checksumFeed) );
 pack->checksum = LittleLong( pack->checksum );
 pack->pure_checksum = LittleLong( pack->pure_checksum );

 Z_Free(fs_headerLongs);

 pack->buildBuffer = buildBuffer;
 return pack;
}
