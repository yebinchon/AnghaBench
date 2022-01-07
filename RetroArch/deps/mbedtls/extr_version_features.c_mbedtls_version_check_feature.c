
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** features ;
 int strcmp (char const*,char const*) ;

int mbedtls_version_check_feature( const char *feature )
{
    const char **idx = features;

    if( *idx == ((void*)0) )
        return( -2 );

    if( feature == ((void*)0) )
        return( -1 );

    while( *idx != ((void*)0) )
    {
        if( !strcmp( *idx, feature ) )
            return( 0 );
        idx++;
    }
    return( -1 );
}
