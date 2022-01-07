
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef TYPE_1__ mbedtls_asn1_named_data ;


 int mbedtls_asn1_free_named_data (TYPE_1__*) ;
 int mbedtls_free (TYPE_1__*) ;

void mbedtls_asn1_free_named_data_list( mbedtls_asn1_named_data **head )
{
    mbedtls_asn1_named_data *cur;

    while( ( cur = *head ) != ((void*)0) )
    {
        *head = cur->next;
        mbedtls_asn1_free_named_data( cur );
        mbedtls_free( cur );
    }
}
