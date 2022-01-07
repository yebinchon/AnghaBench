
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int name ;
typedef int mbedtls_ssl_context ;
struct TYPE_4__ {scalar_t__ type; int value; int name; } ;
typedef TYPE_1__ mbedtls_pk_debug_item ;
typedef int mbedtls_pk_context ;
typedef int items ;


 scalar_t__ MBEDTLS_PK_DEBUG_ECP ;
 int MBEDTLS_PK_DEBUG_MAX_ITEMS ;
 scalar_t__ MBEDTLS_PK_DEBUG_MPI ;
 scalar_t__ MBEDTLS_PK_DEBUG_NONE ;
 int debug_send_line (int const*,int,char const*,int,char*) ;
 int mbedtls_debug_print_ecp (int const*,int,char const*,int,char*,int ) ;
 int mbedtls_debug_print_mpi (int const*,int,char const*,int,char*,int ) ;
 scalar_t__ mbedtls_pk_debug (int const*,TYPE_1__*) ;
 int mbedtls_snprintf (char*,int,char*,char const*,int ) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void debug_print_pk( const mbedtls_ssl_context *ssl, int level,
                            const char *file, int line,
                            const char *text, const mbedtls_pk_context *pk )
{
    size_t i;
    mbedtls_pk_debug_item items[MBEDTLS_PK_DEBUG_MAX_ITEMS];
    char name[16];

    memset( items, 0, sizeof( items ) );

    if( mbedtls_pk_debug( pk, items ) != 0 )
    {
        debug_send_line( ssl, level, file, line,
                          "invalid PK context\n" );
        return;
    }

    for( i = 0; i < MBEDTLS_PK_DEBUG_MAX_ITEMS; i++ )
    {
        if( items[i].type == MBEDTLS_PK_DEBUG_NONE )
            return;

        mbedtls_snprintf( name, sizeof( name ), "%s%s", text, items[i].name );
        name[sizeof( name ) - 1] = '\0';

        if( items[i].type == MBEDTLS_PK_DEBUG_MPI )
            mbedtls_debug_print_mpi( ssl, level, file, line, name, items[i].value );
        else





            debug_send_line( ssl, level, file, line,
                              "should not happen\n" );
    }
}
