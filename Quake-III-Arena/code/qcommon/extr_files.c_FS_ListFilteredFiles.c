
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* dir; TYPE_3__* pack; struct TYPE_9__* next; } ;
typedef TYPE_2__ searchpath_t ;
struct TYPE_10__ {int numfiles; TYPE_4__* buildBuffer; } ;
typedef TYPE_3__ pack_t ;
struct TYPE_11__ {char* name; } ;
typedef TYPE_4__ fileInPack_t ;
struct TYPE_12__ {scalar_t__ integer; } ;
struct TYPE_8__ {int gamedir; int path; } ;


 int Com_Error (int ,char*) ;
 int Com_FilterPath (char*,char*,int ) ;
 int ERR_FATAL ;
 int FS_AddFileToList (char*,char**,int) ;
 char* FS_BuildOSPath (int ,int ,char const*) ;
 int FS_PakIsPure (TYPE_3__*) ;
 int FS_ReturnPath (char const*,char*,int*) ;
 int MAX_FOUND_FILES ;
 int MAX_ZPATH ;
 scalar_t__ Q_stricmp (char*,char const*) ;
 scalar_t__ Q_stricmpn (char*,char const*,int) ;
 int Sys_FreeFileList (char**) ;
 char** Sys_ListFiles (char*,char const*,char*,int*,int ) ;
 char** Z_Malloc (int) ;
 scalar_t__ fs_numServerPaks ;
 TYPE_6__* fs_restrict ;
 TYPE_2__* fs_searchpaths ;
 int qfalse ;
 int strlen (char const*) ;

char **FS_ListFilteredFiles( const char *path, const char *extension, char *filter, int *numfiles ) {
 int nfiles;
 char **listCopy;
 char *list[MAX_FOUND_FILES];
 searchpath_t *search;
 int i;
 int pathLength;
 int extensionLength;
 int length, pathDepth, temp;
 pack_t *pak;
 fileInPack_t *buildBuffer;
 char zpath[MAX_ZPATH];

 if ( !fs_searchpaths ) {
  Com_Error( ERR_FATAL, "Filesystem call made without initialization\n" );
 }

 if ( !path ) {
  *numfiles = 0;
  return ((void*)0);
 }
 if ( !extension ) {
  extension = "";
 }

 pathLength = strlen( path );
 if ( path[pathLength-1] == '\\' || path[pathLength-1] == '/' ) {
  pathLength--;
 }
 extensionLength = strlen( extension );
 nfiles = 0;
 FS_ReturnPath(path, zpath, &pathDepth);




 for (search = fs_searchpaths ; search ; search = search->next) {

  if (search->pack) {



   if ( !FS_PakIsPure(search->pack) ) {
    continue;
   }


   pak = search->pack;
   buildBuffer = pak->buildBuffer;
   for (i = 0; i < pak->numfiles; i++) {
    char *name;
    int zpathLen, depth;


    name = buildBuffer[i].name;

    if (filter) {

     if (!Com_FilterPath( filter, name, qfalse ))
      continue;

     nfiles = FS_AddFileToList( name, list, nfiles );
    }
    else {

     zpathLen = FS_ReturnPath(name, zpath, &depth);

     if ( (depth-pathDepth)>2 || pathLength > zpathLen || Q_stricmpn( name, path, pathLength ) ) {
      continue;
     }


     length = strlen( name );
     if ( length < extensionLength ) {
      continue;
     }

     if ( Q_stricmp( name + length - extensionLength, extension ) ) {
      continue;
     }


     temp = pathLength;
     if (pathLength) {
      temp++;
     }
     nfiles = FS_AddFileToList( name + temp, list, nfiles );
    }
   }
  } else if (search->dir) {
   char *netpath;
   int numSysFiles;
   char **sysFiles;
   char *name;


   if ( fs_restrict->integer || fs_numServerPaks ) {
          continue;
      } else {
    netpath = FS_BuildOSPath( search->dir->path, search->dir->gamedir, path );
    sysFiles = Sys_ListFiles( netpath, extension, filter, &numSysFiles, qfalse );
    for ( i = 0 ; i < numSysFiles ; i++ ) {

     name = sysFiles[i];
     nfiles = FS_AddFileToList( name, list, nfiles );
    }
    Sys_FreeFileList( sysFiles );
   }
  }
 }


 *numfiles = nfiles;

 if ( !nfiles ) {
  return ((void*)0);
 }

 listCopy = Z_Malloc( ( nfiles + 1 ) * sizeof( *listCopy ) );
 for ( i = 0 ; i < nfiles ; i++ ) {
  listCopy[i] = list[i];
 }
 listCopy[i] = ((void*)0);

 return listCopy;
}
