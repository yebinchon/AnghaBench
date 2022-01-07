
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tweak; int crypt; } ;
typedef TYPE_1__ esp_aes_xts_context ;


 int esp_aes_free (int *) ;

void esp_aes_xts_free( esp_aes_xts_context *ctx )
{
    esp_aes_free( &ctx->crypt );
    esp_aes_free( &ctx->tweak );
}
