
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int environ ;
 int execve (char const*,char* const*,int ) ;

int execv( const char* file, char* const argv[] ) {
    return execve( file, argv, environ );
}
