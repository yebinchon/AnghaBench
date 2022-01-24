#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int* p; } ;
struct TYPE_7__ {TYPE_1__ val; } ;
typedef  TYPE_2__ mbedtls_asn1_named_data ;

/* Variables and functions */
 int MBEDTLS_ERR_X509_ALLOC_FAILED ; 
 TYPE_2__* FUNC0 (TYPE_2__**,char const*,size_t,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int*,unsigned char const*,size_t) ; 

int FUNC2( mbedtls_asn1_named_data **head, const char *oid, size_t oid_len,
                        int critical, const unsigned char *val, size_t val_len )
{
    mbedtls_asn1_named_data *cur;

    if( ( cur = FUNC0( head, oid, oid_len,
                                       NULL, val_len + 1 ) ) == NULL )
    {
        return( MBEDTLS_ERR_X509_ALLOC_FAILED );
    }

    cur->val.p[0] = critical;
    FUNC1( cur->val.p + 1, val, val_len );

    return( 0 );
}