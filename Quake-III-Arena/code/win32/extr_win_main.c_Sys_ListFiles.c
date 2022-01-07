
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _finddata_t {int attrib; int name; } ;
typedef int search ;
typedef scalar_t__ qboolean ;


 int Com_sprintf (char*,int,char*,char const*,char const*) ;
 char* CopyString (int ) ;
 int MAX_FOUND_FILES ;
 int MAX_OSPATH ;
 int Sys_ListFilteredFiles (char const*,char*,char*,char**,int*) ;
 char** Z_Malloc (int) ;
 int _A_SUBDIR ;
 int _findclose (int) ;
 int _findfirst (char*,struct _finddata_t*) ;
 int _findnext (int,struct _finddata_t*) ;
 scalar_t__ strgtr (char*,char*) ;

char **Sys_ListFiles( const char *directory, const char *extension, char *filter, int *numfiles, qboolean wantsubs ) {
 char search[MAX_OSPATH];
 int nfiles;
 char **listCopy;
 char *list[MAX_FOUND_FILES];
 struct _finddata_t findinfo;
 int findhandle;
 int flag;
 int i;

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

 if ( !extension) {
  extension = "";
 }


 if ( extension[0] == '/' && extension[1] == 0 ) {
  extension = "";
  flag = 0;
 } else {
  flag = _A_SUBDIR;
 }

 Com_sprintf( search, sizeof(search), "%s\\*%s", directory, extension );


 nfiles = 0;

 findhandle = _findfirst (search, &findinfo);
 if (findhandle == -1) {
  *numfiles = 0;
  return ((void*)0);
 }

 do {
  if ( (!wantsubs && flag ^ ( findinfo.attrib & _A_SUBDIR )) || (wantsubs && findinfo.attrib & _A_SUBDIR) ) {
   if ( nfiles == MAX_FOUND_FILES - 1 ) {
    break;
   }
   list[ nfiles ] = CopyString( findinfo.name );
   nfiles++;
  }
 } while ( _findnext (findhandle, &findinfo) != -1 );

 list[ nfiles ] = 0;

 _findclose (findhandle);


 *numfiles = nfiles;

 if ( !nfiles ) {
  return ((void*)0);
 }

 listCopy = Z_Malloc( ( nfiles + 1 ) * sizeof( *listCopy ) );
 for ( i = 0 ; i < nfiles ; i++ ) {
  listCopy[i] = list[i];
 }
 listCopy[i] = ((void*)0);

 do {
  flag = 0;
  for(i=1; i<nfiles; i++) {
   if (strgtr(listCopy[i-1], listCopy[i])) {
    char *temp = listCopy[i];
    listCopy[i] = listCopy[i-1];
    listCopy[i-1] = temp;
    flag = 1;
   }
  }
 } while(flag);

 return listCopy;
}
