
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* CopyString (char*) ;
 int MAX_FOUND_FILES ;
 int Q_stricmp (char*,char*) ;

__attribute__((used)) static int FS_AddFileToList( char *name, char *list[MAX_FOUND_FILES], int nfiles ) {
 int i;

 if ( nfiles == MAX_FOUND_FILES - 1 ) {
  return nfiles;
 }
 for ( i = 0 ; i < nfiles ; i++ ) {
  if ( !Q_stricmp( name, list[i] ) ) {
   return nfiles;
  }
 }
 list[nfiles] = CopyString( name );
 nfiles++;

 return nfiles;
}
