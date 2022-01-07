
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t len; int p; } ;
struct TYPE_6__ {struct TYPE_6__* next; TYPE_1__ oid; } ;
typedef TYPE_2__ mbedtls_asn1_named_data ;


 scalar_t__ memcmp (int ,char const*,size_t) ;

mbedtls_asn1_named_data *mbedtls_asn1_find_named_data( mbedtls_asn1_named_data *list,
                                       const char *oid, size_t len )
{
    while( list != ((void*)0) )
    {
        if( list->oid.len == len &&
            memcmp( list->oid.p, oid, len ) == 0 )
        {
            break;
        }

        list = list->next;
    }

    return( list );
}
