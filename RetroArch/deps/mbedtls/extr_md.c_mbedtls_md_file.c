
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int (* finish_func ) (int ,unsigned char*) ;int (* update_func ) (int ,unsigned char*,size_t) ;int (* starts_func ) (int ) ;} ;
typedef TYPE_1__ mbedtls_md_info_t ;
struct TYPE_9__ {int md_ctx; } ;
typedef TYPE_2__ mbedtls_md_context_t ;
typedef int buf ;
typedef int FILE ;


 int MBEDTLS_ERR_MD_BAD_INPUT_DATA ;
 int MBEDTLS_ERR_MD_FILE_IO_ERROR ;
 int fclose (int *) ;
 scalar_t__ ferror (int *) ;
 int * fopen (char const*,char*) ;
 size_t fread (unsigned char*,int,int,int *) ;
 int mbedtls_md_free (TYPE_2__*) ;
 int mbedtls_md_init (TYPE_2__*) ;
 int mbedtls_md_setup (TYPE_2__*,TYPE_1__ const*,int ) ;
 int stub1 (int ) ;
 int stub2 (int ,unsigned char*,size_t) ;
 int stub3 (int ,unsigned char*) ;

int mbedtls_md_file( const mbedtls_md_info_t *md_info, const char *path, unsigned char *output )
{
    int ret;
    FILE *f;
    size_t n;
    mbedtls_md_context_t ctx;
    unsigned char buf[1024];

    if( md_info == ((void*)0) )
        return( MBEDTLS_ERR_MD_BAD_INPUT_DATA );

    if( ( f = fopen( path, "rb" ) ) == ((void*)0) )
        return( MBEDTLS_ERR_MD_FILE_IO_ERROR );

    mbedtls_md_init( &ctx );

    if( ( ret = mbedtls_md_setup( &ctx, md_info, 0 ) ) != 0 )
        goto cleanup;

    md_info->starts_func( ctx.md_ctx );

    while( ( n = fread( buf, 1, sizeof( buf ), f ) ) > 0 )
        md_info->update_func( ctx.md_ctx, buf, n );

    if( ferror( f ) != 0 )
    {
        ret = MBEDTLS_ERR_MD_FILE_IO_ERROR;
        goto cleanup;
    }

    md_info->finish_func( ctx.md_ctx, output );

cleanup:
    fclose( f );
    mbedtls_md_free( &ctx );

    return( ret );
}
