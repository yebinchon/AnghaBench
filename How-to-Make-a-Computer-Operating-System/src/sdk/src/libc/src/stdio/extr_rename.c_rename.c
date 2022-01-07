
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOSYS ;
 int errno ;
 int printf (char*,char const*,char const*) ;

int rename( const char* oldpath, const char* newpath ) {
    printf( "TODO: rename not yet implemented! (from: %s to: %s)\n", oldpath, newpath );

    errno = -ENOSYS;

    return -1;
}
