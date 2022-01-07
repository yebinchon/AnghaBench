
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 scalar_t__ S_ISDIR (int ) ;
 int rmdir (char const*) ;
 scalar_t__ stat (char const*,struct stat*) ;
 int unlink (char const*) ;

int remove( const char* path ) {
  struct stat st;

  if ( stat( path, &st) != 0 ) {
    return -1;
  }

  if ( S_ISDIR( st.st_mode ) ) {
    return rmdir( path );
  } else {
    return unlink( path );
  }
}
