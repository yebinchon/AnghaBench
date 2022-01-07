
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
struct dirent {char const* d_name; } ;
typedef int search ;
typedef scalar_t__ qboolean ;
typedef int DIR ;


 int Com_sprintf (char*,int,char*,char const*,char const*) ;
 char* CopyString (char const*) ;
 int MAX_FOUND_FILES ;
 int MAX_OSPATH ;
 scalar_t__ Q_stricmp (char const*,char const*) ;
 int S_IFDIR ;
 int Sys_ListFilteredFiles (char const*,char*,char*,char**,int*) ;
 char** Z_Malloc (int) ;
 int closedir (int *) ;
 int * opendir (char const*) ;
 scalar_t__ qtrue ;
 struct dirent* readdir (int *) ;
 int stat (char*,struct stat*) ;
 int strlen (char const*) ;

char **Sys_ListFiles( const char *directory, const char *extension, char *filter, int *numfiles, qboolean wantsubs )
{
 struct dirent *d;

 DIR *fdir;
 qboolean dironly = wantsubs;
 char search[MAX_OSPATH];
 int nfiles;
 char **listCopy;
 char *list[MAX_FOUND_FILES];

 int i;
 struct stat st;

 int extLen;

 if (filter) {

  nfiles = 0;
  Sys_ListFilteredFiles( directory, "", filter, list, &nfiles );

  list[ nfiles ] = 0;
  *numfiles = nfiles;

  if (!nfiles)
   return ((void*)0);

  listCopy = Z_Malloc( ( nfiles + 1 ) * sizeof( *listCopy ) );
  for ( i = 0 ; i < nfiles ; i++ ) {
   listCopy[i] = list[i];
  }
  listCopy[i] = ((void*)0);

  return listCopy;
 }

 if ( !extension)
  extension = "";

 if ( extension[0] == '/' && extension[1] == 0 ) {
  extension = "";
  dironly = qtrue;
 }

 extLen = strlen( extension );


 nfiles = 0;

 if ((fdir = opendir(directory)) == ((void*)0)) {
  *numfiles = 0;
  return ((void*)0);
 }

 while ((d = readdir(fdir)) != ((void*)0)) {
  Com_sprintf(search, sizeof(search), "%s/%s", directory, d->d_name);
  if (stat(search, &st) == -1)
   continue;
  if ((dironly && !(st.st_mode & S_IFDIR)) ||
   (!dironly && (st.st_mode & S_IFDIR)))
   continue;

  if (*extension) {
   if ( strlen( d->d_name ) < strlen( extension ) ||
    Q_stricmp(
     d->d_name + strlen( d->d_name ) - strlen( extension ),
     extension ) ) {
    continue;
   }
  }

  if ( nfiles == MAX_FOUND_FILES - 1 )
   break;
  list[ nfiles ] = CopyString( d->d_name );
  nfiles++;
 }

 list[ nfiles ] = 0;

 closedir(fdir);


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
