
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* name; int * value; int type; } ;
typedef TYPE_1__ mbedtls_pk_debug_item ;
struct TYPE_5__ {int Q; } ;
typedef TYPE_2__ mbedtls_ecp_keypair ;


 int MBEDTLS_PK_DEBUG_ECP ;

__attribute__((used)) static void eckey_debug( const void *ctx, mbedtls_pk_debug_item *items )
{
    items->type = MBEDTLS_PK_DEBUG_ECP;
    items->name = "eckey.Q";
    items->value = &( ((mbedtls_ecp_keypair *) ctx)->Q );
}
