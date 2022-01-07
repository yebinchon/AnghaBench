
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 char* strdup (char const*) ;

__attribute__((used)) static void hb_update_str( char **dst, const char *src )
{
    if ( dst )
    {
        free( *dst );
        *dst = ((void*)0);
        if ( src )
        {
            *dst = strdup( src );
        }
    }
}
