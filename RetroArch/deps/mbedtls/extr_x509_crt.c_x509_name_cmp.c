
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ tag; scalar_t__ len; int p; } ;
struct TYPE_6__ {scalar_t__ next_merged; struct TYPE_6__* next; int val; TYPE_1__ oid; } ;
typedef TYPE_2__ mbedtls_x509_name ;


 scalar_t__ memcmp (int ,int ,scalar_t__) ;
 scalar_t__ x509_string_cmp (int *,int *) ;

__attribute__((used)) static int x509_name_cmp( const mbedtls_x509_name *a, const mbedtls_x509_name *b )
{

    while( a != ((void*)0) || b != ((void*)0) )
    {
        if( a == ((void*)0) || b == ((void*)0) )
            return( -1 );


        if( a->oid.tag != b->oid.tag ||
            a->oid.len != b->oid.len ||
            memcmp( a->oid.p, b->oid.p, b->oid.len ) != 0 )
        {
            return( -1 );
        }


        if( x509_string_cmp( &a->val, &b->val ) != 0 )
            return( -1 );


        if( a->next_merged != b->next_merged )
            return( -1 );

        a = a->next;
        b = b->next;
    }


    return( 0 );
}
