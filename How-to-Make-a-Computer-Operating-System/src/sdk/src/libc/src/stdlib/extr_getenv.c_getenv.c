
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** environ ;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char*,char const*,size_t) ;

char* getenv( const char* name ) {
 return ((void*)0);

    int i;
    size_t length;
    size_t name_length;

    name_length = strlen( name );

    for ( i = 0; environ[ i ] != ((void*)0); i++ ) {
        length = strlen( environ[ i ] );

        if ( length < ( name_length + 1 ) ) {
            continue;
        }

        if ( ( strncmp( environ[ i ], name, name_length ) == 0 ) &&
             ( environ[ i ][ name_length ] == '=' ) ) {
            return &environ[ i ][ name_length + 1 ];
        }
    }

    return ((void*)0);
}
