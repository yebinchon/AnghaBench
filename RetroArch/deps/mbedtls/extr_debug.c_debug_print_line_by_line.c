
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_ssl_context ;


 int DEBUG_BUF_SIZE ;
 int debug_send_line (int const*,int,char const*,int,char*) ;
 int memcpy (char*,char const*,size_t) ;

__attribute__((used)) static void debug_print_line_by_line( const mbedtls_ssl_context *ssl, int level,
                                      const char *file, int line, const char *text )
{
    char str[DEBUG_BUF_SIZE];
    const char *start, *cur;

    start = text;
    for( cur = text; *cur != '\0'; cur++ )
    {
        if( *cur == '\n' )
        {
            size_t len = cur - start + 1;
            if( len > DEBUG_BUF_SIZE - 1 )
                len = DEBUG_BUF_SIZE - 1;

            memcpy( str, start, len );
            str[len] = '\0';

            debug_send_line( ssl, level, file, line, str );

            start = cur + 1;
        }
    }
}
