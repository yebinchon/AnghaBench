
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** FS_ListFilteredFiles (char const*,char const*,int *,int*) ;

char **FS_ListFiles( const char *path, const char *extension, int *numfiles ) {
 return FS_ListFilteredFiles( path, extension, ((void*)0), numfiles );
}
