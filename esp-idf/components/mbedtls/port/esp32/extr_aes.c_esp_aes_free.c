
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_aes_context ;


 int bzero (int *,int) ;

void esp_aes_free( esp_aes_context *ctx )
{
    if ( ctx == ((void*)0) ) {
        return;
    }

    bzero( ctx, sizeof( esp_aes_context ) );
}
