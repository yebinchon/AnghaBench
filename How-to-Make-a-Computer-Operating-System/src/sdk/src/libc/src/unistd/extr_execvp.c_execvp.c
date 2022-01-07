
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp_exec ;


 int environ ;
 int execve (char const*,char* const*,int ) ;
 char* getenv (char*) ;
 int memcpy (char*,char*,size_t) ;
 int snprintf (char*,int,char*,char*,char const*) ;
 char* strchr (char*,char) ;
 size_t strlen (char*) ;

int execvp( const char* filename, char* const argv[] ) {
    char* path;
    char* separator;
    char tmp_path[ 128 ];
    char tmp_exec[ 128 ];

    execve( filename, argv, environ );

    path = getenv( "PATH" );

    if ( path == ((void*)0) ) {
        return -1;
    }

    do {
        separator = strchr( path, ':' );

        if ( separator == ((void*)0) ) {
            memcpy( tmp_path, path, strlen( path ) + 1 );
        } else {
            size_t length = ( separator - path );

            memcpy( tmp_path, path, length );
            tmp_path[ length ] = 0;
        }

        snprintf( tmp_exec, sizeof( tmp_exec ), "%s/%s", tmp_path, filename );
        execve( tmp_exec, argv, environ );

        path = separator + 1;
    } while ( separator != ((void*)0) );

    return -1;
}
