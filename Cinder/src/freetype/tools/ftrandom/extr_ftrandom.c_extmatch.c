
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcasecmp (char*,char*) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static int
  extmatch( char* filename,
            char** extensions )
  {
    int i;
    char* pt;


    if ( !extensions )
      return 1;

    pt = strrchr( filename, '.' );
    if ( !pt )
      return 0;
    if ( pt < strrchr( filename, '/' ) )
      return 0;

    for ( i = 0; extensions[i] != ((void*)0); i++ )
      if ( strcasecmp( pt + 1, extensions[i] ) == 0 ||
           strcasecmp( pt, extensions[i] ) == 0 )
        return 1;

    return 0;
  }
