#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int len; TYPE_6__* p; } ;
struct TYPE_15__ {TYPE_6__* next; } ;
struct TYPE_14__ {TYPE_6__* next; } ;
struct TYPE_13__ {TYPE_6__* next; } ;
struct TYPE_12__ {TYPE_6__* next; } ;
struct TYPE_17__ {struct TYPE_17__* next; TYPE_5__ raw; TYPE_4__ subject_alt_names; TYPE_3__ ext_key_usage; TYPE_2__ subject; TYPE_1__ issuer; struct TYPE_17__* sig_opts; int /*<<< orphan*/  pk; } ;
typedef  TYPE_6__ mbedtls_x509_sequence ;
typedef  TYPE_6__ mbedtls_x509_name ;
typedef  TYPE_6__ mbedtls_x509_crt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,int) ; 

void FUNC3( mbedtls_x509_crt *crt )
{
    mbedtls_x509_crt *cert_cur = crt;
    mbedtls_x509_crt *cert_prv;
    mbedtls_x509_name *name_cur;
    mbedtls_x509_name *name_prv;
    mbedtls_x509_sequence *seq_cur;
    mbedtls_x509_sequence *seq_prv;

    if( crt == NULL )
        return;

    do
    {
        FUNC1( &cert_cur->pk );

#if defined(MBEDTLS_X509_RSASSA_PSS_SUPPORT)
        mbedtls_free( cert_cur->sig_opts );
#endif

        name_cur = cert_cur->issuer.next;
        while( name_cur != NULL )
        {
            name_prv = name_cur;
            name_cur = name_cur->next;
            FUNC2( name_prv, sizeof( mbedtls_x509_name ) );
            FUNC0( name_prv );
        }

        name_cur = cert_cur->subject.next;
        while( name_cur != NULL )
        {
            name_prv = name_cur;
            name_cur = name_cur->next;
            FUNC2( name_prv, sizeof( mbedtls_x509_name ) );
            FUNC0( name_prv );
        }

        seq_cur = cert_cur->ext_key_usage.next;
        while( seq_cur != NULL )
        {
            seq_prv = seq_cur;
            seq_cur = seq_cur->next;
            FUNC2( seq_prv, sizeof( mbedtls_x509_sequence ) );
            FUNC0( seq_prv );
        }

        seq_cur = cert_cur->subject_alt_names.next;
        while( seq_cur != NULL )
        {
            seq_prv = seq_cur;
            seq_cur = seq_cur->next;
            FUNC2( seq_prv, sizeof( mbedtls_x509_sequence ) );
            FUNC0( seq_prv );
        }

        if( cert_cur->raw.p != NULL )
        {
            FUNC2( cert_cur->raw.p, cert_cur->raw.len );
            FUNC0( cert_cur->raw.p );
        }

        cert_cur = cert_cur->next;
    }
    while( cert_cur != NULL );

    cert_cur = crt;
    do
    {
        cert_prv = cert_cur;
        cert_cur = cert_cur->next;

        FUNC2( cert_prv, sizeof( mbedtls_x509_crt ) );
        if( cert_prv != crt )
            FUNC0( cert_prv );
    }
    while( cert_cur != NULL );
}