#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  (* finish_func ) (int /*<<< orphan*/ ,unsigned char*) ;int /*<<< orphan*/  (* update_func ) (int /*<<< orphan*/ ,unsigned char*,size_t) ;int /*<<< orphan*/  (* starts_func ) (int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ mbedtls_md_info_t ;
struct TYPE_9__ {int /*<<< orphan*/  md_ctx; } ;
typedef  TYPE_2__ mbedtls_md_context_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int MBEDTLS_ERR_MD_BAD_INPUT_DATA ; 
 int MBEDTLS_ERR_MD_FILE_IO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 size_t FUNC3 (unsigned char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int FUNC6 (TYPE_2__*,TYPE_1__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,unsigned char*) ; 

int FUNC10( const mbedtls_md_info_t *md_info, const char *path, unsigned char *output )
{
    int ret;
    FILE *f;
    size_t n;
    mbedtls_md_context_t ctx;
    unsigned char buf[1024];

    if( md_info == NULL )
        return( MBEDTLS_ERR_MD_BAD_INPUT_DATA );

    if( ( f = FUNC2( path, "rb" ) ) == NULL )
        return( MBEDTLS_ERR_MD_FILE_IO_ERROR );

    FUNC5( &ctx );

    if( ( ret = FUNC6( &ctx, md_info, 0 ) ) != 0 )
        goto cleanup;

    md_info->starts_func( ctx.md_ctx );

    while( ( n = FUNC3( buf, 1, sizeof( buf ), f ) ) > 0 )
        md_info->update_func( ctx.md_ctx, buf, n );

    if( FUNC1( f ) != 0 )
    {
        ret = MBEDTLS_ERR_MD_FILE_IO_ERROR;
        goto cleanup;
    }

    md_info->finish_func( ctx.md_ctx, output );

cleanup:
    FUNC0( f );
    FUNC4( &ctx );

    return( ret );
}