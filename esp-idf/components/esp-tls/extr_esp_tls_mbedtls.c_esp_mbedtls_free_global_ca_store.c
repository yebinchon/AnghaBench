
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * global_cacert ;
 int mbedtls_x509_crt_free (int *) ;

void esp_mbedtls_free_global_ca_store(void)
{
    if (global_cacert) {
        mbedtls_x509_crt_free(global_cacert);
        global_cacert = ((void*)0);
    }
}
