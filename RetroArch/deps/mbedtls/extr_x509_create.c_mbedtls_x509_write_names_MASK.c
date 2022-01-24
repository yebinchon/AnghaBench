#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  len; int /*<<< orphan*/  p; } ;
struct TYPE_6__ {int /*<<< orphan*/  len; scalar_t__ p; } ;
struct TYPE_7__ {struct TYPE_7__* next; TYPE_1__ val; TYPE_2__ oid; } ;
typedef  TYPE_3__ mbedtls_asn1_named_data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int MBEDTLS_ASN1_CONSTRUCTED ; 
 int MBEDTLS_ASN1_SEQUENCE ; 
 int /*<<< orphan*/  FUNC1 (unsigned char**,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char**,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char**,unsigned char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4( unsigned char **p, unsigned char *start,
                      mbedtls_asn1_named_data *first )
{
    int ret;
    size_t len = 0;
    mbedtls_asn1_named_data *cur = first;

    while( cur != NULL )
    {
        FUNC0( len, FUNC3( p, start, (char *) cur->oid.p,
                                            cur->oid.len,
                                            cur->val.p, cur->val.len ) );
        cur = cur->next;
    }

    FUNC0( len, FUNC1( p, start, len ) );
    FUNC0( len, FUNC2( p, start, MBEDTLS_ASN1_CONSTRUCTED |
                                                 MBEDTLS_ASN1_SEQUENCE ) );

    return( (int) len );
}